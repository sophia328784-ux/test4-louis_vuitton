package com.kakao.sdk.common.model;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcom/kakao/sdk/common/model/SdkIdentifier;", "", "", "identifiers", "<init>", "(Ljava/lang/String;)V", "Ljava/lang/String;", "a", "()Ljava/lang/String;", "Companion", "common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class SdkIdentifier {
    private final String identifiers;

    public /* synthetic */ SdkIdentifier(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str);
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getIdentifiers() {
        return this.identifiers;
    }

    public SdkIdentifier(String str) {
        this.identifiers = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SdkIdentifier() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
