package com.linkplay.alarm;

import com.linkplay.lpmdpkit.bean.LPAlarmList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface LPAlarmListListener {
    void alarmList(List<LPAlarmList> list);

    void onFail(Exception exc);
}
