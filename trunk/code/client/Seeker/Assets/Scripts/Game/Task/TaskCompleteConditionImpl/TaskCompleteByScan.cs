﻿using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace SeekerGame
{
    [TaskComplete(TaskCompleteMode.CompleteByScanID)]
    public class TaskCompleteByScan : TaskCompleteCondition
    {
        public TaskCompleteByScan(object data) : base(data)
        {

        }

        public override void SetCompleteProgressData(object progressData)
        {
            this.m_taskCompletedConditionProgress = Convert.ToInt64(progressData);
        }

        new public long TaskCompleteData => Convert.ToInt64(base.TaskCompleteData);

    }
}