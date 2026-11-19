package com.vuitton.foundation.model.domain.model.account.consent;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;", "", "Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;", "kisa", "Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;", "marketing", "<init>", "(Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class UserConsents {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KisaConsents f66292a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MarketingConsents f66293b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<UserConsents> serializer() {
            return UserConsents$$serializer.f66294a;
        }
    }

    public /* synthetic */ UserConsents(int i2, KisaConsents kisaConsents, MarketingConsents marketingConsents, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, UserConsents$$serializer.f66294a.a());
            throw null;
        }
        this.f66292a = kisaConsents;
        this.f66293b = marketingConsents;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UserConsents)) {
            return false;
        }
        UserConsents userConsents = (UserConsents) obj;
        return Intrinsics.c(this.f66292a, userConsents.f66292a) && Intrinsics.c(this.f66293b, userConsents.f66293b);
    }

    public final int hashCode() {
        KisaConsents kisaConsents = this.f66292a;
        int iHashCode = (kisaConsents == null ? 0 : kisaConsents.hashCode()) * 31;
        MarketingConsents marketingConsents = this.f66293b;
        return iHashCode + (marketingConsents != null ? marketingConsents.hashCode() : 0);
    }

    public final String toString() {
        return "UserConsents(kisa=" + this.f66292a + ", marketing=" + this.f66293b + ")";
    }

    public UserConsents(KisaConsents kisaConsents, MarketingConsents marketingConsents) {
        this.f66292a = kisaConsents;
        this.f66293b = marketingConsents;
    }
}
