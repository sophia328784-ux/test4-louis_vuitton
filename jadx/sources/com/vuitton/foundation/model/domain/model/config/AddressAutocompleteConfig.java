package com.vuitton.foundation.model.domain.model.config;

import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/config/AddressAutocompleteConfig;", "", "", "isDebounceEnabled", "<init>", "(Z)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AddressAutocompleteConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f67229a;

    public /* synthetic */ AddressAutocompleteConfig(boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? true : z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AddressAutocompleteConfig) && this.f67229a == ((AddressAutocompleteConfig) obj).f67229a;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f67229a);
    }

    public final String toString() {
        return tr.i("AddressAutocompleteConfig(isDebounceEnabled=", ")", this.f67229a);
    }

    public AddressAutocompleteConfig(boolean z) {
        this.f67229a = z;
    }

    public AddressAutocompleteConfig() {
        this(false, 1, null);
    }
}
