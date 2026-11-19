package com.networkbench.agent.impl.oom.javaoom.monitor.analysis;

import android.os.Bundle;
import android.os.ResultReceiver;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \r2\u00020\u0001:\u0002\r\u000eB\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0014J\u0010\u0010\u000b\u001a\u00020\u00062\b\u0010\f\u001a\u0004\u0018\u00010\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/AnalysisReceiver;", "Landroid/os/ResultReceiver;", "()V", "mResultCallBack", "Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/AnalysisReceiver$ResultCallBack;", "onReceiveResult", "", "resultCode", "", "resultData", "Landroid/os/Bundle;", "setResultCallBack", "resultCallBack", "Companion", "ResultCallBack", "koom-java-leak_release"}, k = 1, mv = {1, 4, 1})
public final class AnalysisReceiver extends ResultReceiver {
    public static final int RESULT_CODE_FAIL = 1002;
    public static final int RESULT_CODE_OK = 1001;
    private ResultCallBack mResultCallBack;

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&¨\u0006\u0005"}, d2 = {"Lcom/networkbench/agent/impl/oom/javaoom/monitor/analysis/AnalysisReceiver$ResultCallBack;", "", "onError", "", "onSuccess", "koom-java-leak_release"}, k = 1, mv = {1, 4, 1})
    public interface ResultCallBack {
        void onError();

        void onSuccess();
    }

    public AnalysisReceiver() {
        super(null);
    }

    @Override // android.os.ResultReceiver
    public void onReceiveResult(int resultCode, Bundle resultData) {
        super.onReceiveResult(resultCode, resultData);
        ResultCallBack resultCallBack = this.mResultCallBack;
        if (resultCallBack != null) {
            if (resultCode == 1001) {
                resultCallBack.getClass();
                resultCallBack.onSuccess();
            } else {
                resultCallBack.getClass();
                resultCallBack.onError();
            }
        }
    }

    public final void setResultCallBack(ResultCallBack resultCallBack) {
        this.mResultCallBack = resultCallBack;
    }
}
