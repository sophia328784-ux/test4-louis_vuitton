package com.vuitton.android.data.datasource.address;

import android.content.Context;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import dagger.hilt.android.qualifiers.ApplicationContext;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlinx.serialization.json.Json;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u001b\b\u0007\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/data/datasource/address/AddressLocalDataSource;", "", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Lkotlinx/serialization/json/Json;", "json", "<init>", "(Landroid/content/Context;Lkotlinx/serialization/json/Json;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AddressLocalDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f43670a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Json f43671b;

    @Inject
    public AddressLocalDataSource(@ApplicationContext Context context, Json json) {
        context.getClass();
        json.getClass();
        this.f43670a = context;
        this.f43671b = json;
    }
}
