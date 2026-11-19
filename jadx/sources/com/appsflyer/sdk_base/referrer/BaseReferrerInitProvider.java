package com.appsflyer.sdk_base.referrer;

import android.content.Context;
import com.appsflyer.sdk_base.util.BaseInitProvider;
import java.util.Objects;
import kotlin.Pair;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseReferrerInitProvider extends BaseInitProvider {
    public abstract ReferrerCreator<? extends Referrer> getCreator();

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        Context context = getContext();
        if (context != null) {
            try {
                if (BaseInitProvider.isMainProcess(context)) {
                    Objects.toString(getCreator());
                    Referrer.addExternalReferrers(new Pair(getCreator(), getClass()));
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }
}
