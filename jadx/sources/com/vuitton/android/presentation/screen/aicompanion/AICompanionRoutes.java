package com.vuitton.android.presentation.screen.aicompanion;

import androidx.navigation3.runtime.NavKey;
import defpackage.v;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionRoutes;", "Landroidx/navigation3/runtime/NavKey;", "Onboarding", "Chat", "History", "Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionRoutes$Chat;", "Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionRoutes$History;", "Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionRoutes$Onboarding;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class AICompanionRoutes implements NavKey {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionRoutes$Chat;", "Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Chat extends AICompanionRoutes {
        public static final Chat INSTANCE = new Chat(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f52726a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new v(6));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Chat);
        }

        public final int hashCode() {
            return 1391570561;
        }

        public final KSerializer<Chat> serializer() {
            return (KSerializer) f52726a.getF71699b();
        }

        public final String toString() {
            return "Chat";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionRoutes$History;", "Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class History extends AICompanionRoutes {
        public static final History INSTANCE = new History(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f52727a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new v(7));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof History);
        }

        public final int hashCode() {
            return 1442155723;
        }

        public final KSerializer<History> serializer() {
            return (KSerializer) f52727a.getF71699b();
        }

        public final String toString() {
            return "History";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionRoutes$Onboarding;", "Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Onboarding extends AICompanionRoutes {
        public static final Onboarding INSTANCE = new Onboarding(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f52728a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new v(8));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Onboarding);
        }

        public final int hashCode() {
            return -1226535292;
        }

        public final KSerializer<Onboarding> serializer() {
            return (KSerializer) f52728a.getF71699b();
        }

        public final String toString() {
            return "Onboarding";
        }
    }

    public AICompanionRoutes(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
