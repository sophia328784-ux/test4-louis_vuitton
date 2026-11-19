package com.sightcall.core.experiences.wrapper;

import android.content.Intent;
import android.net.Uri;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J3\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052!\u0010\u0006\u001a\u001d\u0012\u0013\u0012\u00110\b¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\u00030\u0007H&¨\u0006\fÀ\u0006\u0003"}, d2 = {"Lcom/sightcall/core/experiences/wrapper/FeatureWrapper;", "", "startWithIntent", "", "uri", "Landroid/net/Uri;", "myCallback", "Lkotlin/Function1;", "Landroid/content/Intent;", "Lkotlin/ParameterName;", "name", "intent", "core_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface FeatureWrapper {
    void startWithIntent(Uri uri, Function1<? super Intent, Unit> myCallback);
}
