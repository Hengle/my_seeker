﻿using System;
using System.Collections.Generic;

namespace Utils
{
    /// <summary>
    /// 单线程内存池，请确保在内存池中存储完全可替换的对象，例如如果存储byte[],则长度需完全相同
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public class MemoryPool<T> where T:class
    {
        public MemoryPool(int maxSize = 10000)
        {
            _maxSize = maxSize;
        }
        public T Alloc()
        {
            T t = null;
            if (_objs.Count > 0)
                t = _objs.Dequeue();
            return t;
        }
        public bool Free(T t)
        {
            if(_objs.Count < _maxSize)
            {
                _objs.Enqueue(t);
                return true;
            }
            return false;
        }
        public void Dispose()
        {
            _objs.Clear();
        }
        public int Count { get { return _objs.Count; } }
        private Queue<T> _objs = new Queue<T>();
        private int _maxSize = 10;
    }

    /// <summary>
    /// 线程安全的内存池
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public class MemoryPoolSafe<T> where T : class
    {
        public MemoryPoolSafe(int maxSize = 10)
        {
            _maxSize = maxSize;
        }
        public T Alloc()
        {
            T t = null;
            if (_objs.Dequeue(out t))
                return t;
            else
                return null;
        }
        public void Free(T t)
        {
            if(_objs.Count < _maxSize)
               _objs.Enqueue(t);
        }
        public void Dispose()
        {
            _objs.Clear();
        }
        public int Count { get { return _objs.Count; } }
        private Utils.ThreadSafeQueue<T> _objs = new Utils.ThreadSafeQueue<T>();
        private int _maxSize = 10;
    }
}

