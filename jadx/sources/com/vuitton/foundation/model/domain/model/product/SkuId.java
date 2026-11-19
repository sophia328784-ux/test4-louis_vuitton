package com.vuitton.foundation.model.domain.model.product;

import com.batch.android.s.b;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0087@\u0018\u0000 \u00022\u00020\u0001:\u0002\u0002\u0003\u0088\u0001\u0004\u0092\u0001\u00020\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "", "Companion", "$serializer", b.a.f24015b, "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
@JvmInline
@Serializable
public final class SkuId {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f67932b = "";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67933a;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<SkuId> serializer() {
            return SkuId$$serializer.f67934a;
        }
    }

    public /* synthetic */ SkuId(String str) {
        this.f67933a = str;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof SkuId) {
            return Intrinsics.c(this.f67933a, ((SkuId) obj).f67933a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f67933a.hashCode();
    }

    /* JADX INFO: renamed from: toString, reason: from getter */
    public final String getF67933a() {
        return this.f67933a;
    }
}
