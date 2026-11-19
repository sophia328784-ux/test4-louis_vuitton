package com.linecorp.linesdk;

import android.content.Context;
import android.os.Bundle;
import com.linecorp.linesdk.api.LineEnvConfig;
import defpackage.cj;
import defpackage.pq0;
import defpackage.r81;
import defpackage.v7;
import kotlin.Metadata;
import kotlin.Result;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/linecorp/linesdk/ManifestParser;", "", "<init>", "()V", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Lcom/linecorp/linesdk/api/LineEnvConfig;", "parse", "(Landroid/content/Context;)Lcom/linecorp/linesdk/api/LineEnvConfig;", "line-sdk_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ManifestParser {
    public final LineEnvConfig parse(Context context) {
        Object failure;
        String string;
        context.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle == null || (string = bundle.getString("LineEnvConfig")) == null) {
                failure = null;
            } else {
                try {
                    Class<?> cls = Class.forName(string);
                    try {
                        Object objNewInstance = cls.newInstance();
                        objNewInstance.getClass();
                        if (objNewInstance instanceof LineEnvConfig) {
                            failure = (LineEnvConfig) objNewInstance;
                        } else {
                            v7.h(cj.i(objNewInstance, "Expected instanceof LineEnvConfig, but found: "));
                            failure = null;
                        }
                    } catch (ReflectiveOperationException e2) {
                        r81.g(pq0.m(cls, "Unable to instantiate LineEnvConfig implementation for "), e2);
                    }
                } catch (ClassNotFoundException e3) {
                    r81.j("Unable to find LineEnvConfig implementation", e3);
                }
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        return (LineEnvConfig) (failure instanceof Result.Failure ? null : failure);
    }
}
