package com.vuitton.android.presentation.screen.authentication.register.components;

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
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000 \b2\u00020\u0001:\u0003\t\n\bB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007\u0082\u0001\u0002\u000b\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRoutes;", "", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "<init>", "(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "Register", "JusoSearch", "Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRoutes$JusoSearch;", "Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRoutes$Register;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public abstract class NativeRegisterRoutes {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Lazy f53860a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new dd0(19));

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRoutes$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRoutes;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<NativeRegisterRoutes> serializer() {
            return (KSerializer) NativeRegisterRoutes.f53860a.getF71699b();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRoutes$Register;", "Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRoutes;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class Register extends NativeRegisterRoutes {
        public static final Register INSTANCE = new Register(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ Lazy f53864b = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new dd0(20));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Register);
        }

        public final int hashCode() {
            return -1718381207;
        }

        public final KSerializer<Register> serializer() {
            return (KSerializer) f53864b.getF71699b();
        }

        public final String toString() {
            return "Register";
        }
    }

    public /* synthetic */ NativeRegisterRoutes(int i2, SerializationConstructorMarker serializationConstructorMarker) {
    }

    public NativeRegisterRoutes(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \f2\u00020\u0001:\u0002\r\fB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006B/\b\u0010\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0005\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRoutes$JusoSearch;", "Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRoutes;", "", "query", "regionCode", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class JusoSearch extends NativeRegisterRoutes {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53861b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f53862c;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRoutes$JusoSearch$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRoutes$JusoSearch;", "serializer", "()Lkotlinx/serialization/KSerializer;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<JusoSearch> serializer() {
                return NativeRegisterRoutes$JusoSearch$$serializer.f53863a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ JusoSearch(int i2, String str, String str2, SerializationConstructorMarker serializationConstructorMarker) {
            super(i2, serializationConstructorMarker);
            if (3 != (i2 & 3)) {
                PluginExceptionsKt.b(i2, 3, NativeRegisterRoutes$JusoSearch$$serializer.f53863a.getF19838b());
                throw null;
            }
            this.f53861b = str;
            this.f53862c = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof JusoSearch)) {
                return false;
            }
            JusoSearch jusoSearch = (JusoSearch) obj;
            return Intrinsics.c(this.f53861b, jusoSearch.f53861b) && Intrinsics.c(this.f53862c, jusoSearch.f53862c);
        }

        public final int hashCode() {
            return this.f53862c.hashCode() + (this.f53861b.hashCode() * 31);
        }

        public final String toString() {
            return d21.l("JusoSearch(query=", this.f53861b, ", regionCode=", this.f53862c, ")");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public JusoSearch(String str, String str2) {
            super(null);
            str.getClass();
            str2.getClass();
            this.f53861b = str;
            this.f53862c = str2;
        }
    }
}
