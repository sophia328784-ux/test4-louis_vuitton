package com.vuitton.android.presentation.screen.main.navigation;

import defpackage.dd0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/navigation/MyLvRoute;", "", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final class MyLvRoute {
    public static final MyLvRoute INSTANCE = new MyLvRoute();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ Lazy f59163a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new dd0(13));

    public final KSerializer<MyLvRoute> serializer() {
        return (KSerializer) f59163a.getF71699b();
    }
}
