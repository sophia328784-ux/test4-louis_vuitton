package com.vuitton.android.presentation.screen.cart;

import defpackage.d21;
import defpackage.dd0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bp\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute;", "", "Cart", "PerfumeSamples", "GiftMessage", "Packaging", "Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$Cart;", "Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage;", "Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$Packaging;", "Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$PerfumeSamples;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface NativeCartRoute {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$Cart;", "Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final class Cart implements NativeCartRoute {
        public static final Cart INSTANCE = new Cart();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f54865a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new dd0(15));

        public final KSerializer<Cart> serializer() {
            return (KSerializer) f54865a.getF71699b();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$Packaging;", "Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final class Packaging implements NativeCartRoute {
        public static final Packaging INSTANCE = new Packaging();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f54869a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new dd0(16));

        public final KSerializer<Packaging> serializer() {
            return (KSerializer) f54869a.getF71699b();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$PerfumeSamples;", "Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final class PerfumeSamples implements NativeCartRoute {
        public static final PerfumeSamples INSTANCE = new PerfumeSamples();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f54870a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new dd0(17));

        public final KSerializer<PerfumeSamples> serializer() {
            return (KSerializer) f54870a.getF71699b();
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B-\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage;", "Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute;", "", "draftText", "", "isBlank", "<init>", "(Ljava/lang/String;Z)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;ZLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class GiftMessage implements NativeCartRoute {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f54866a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f54867b;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<GiftMessage> serializer() {
                return NativeCartRoute$GiftMessage$$serializer.f54868a;
            }
        }

        public /* synthetic */ GiftMessage(int i2, String str, boolean z, SerializationConstructorMarker serializationConstructorMarker) {
            if (3 != (i2 & 3)) {
                PluginExceptionsKt.b(i2, 3, NativeCartRoute$GiftMessage$$serializer.f54868a.getF19838b());
                throw null;
            }
            this.f54866a = str;
            this.f54867b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof GiftMessage)) {
                return false;
            }
            GiftMessage giftMessage = (GiftMessage) obj;
            return Intrinsics.c(this.f54866a, giftMessage.f54866a) && this.f54867b == giftMessage.f54867b;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f54867b) + (this.f54866a.hashCode() * 31);
        }

        public final String toString() {
            return d21.m("GiftMessage(draftText=", this.f54866a, ", isBlank=", ")", this.f54867b);
        }

        public GiftMessage(String str, boolean z) {
            str.getClass();
            this.f54866a = str;
            this.f54867b = z;
        }
    }
}
