package com.vuitton.android.presentation.screen.storemode.models;

import defpackage.a;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/models/PLPStoreModeViewState;", "", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;", "content", "", "isPlpV3GridViewEnabled", "isAiCompanionEnabled", "<init>", "(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;ZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PLPStoreModeViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StoreModeContentUiModel f65037a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f65038b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f65039c;

    /* JADX WARN: Illegal instructions before constructor call */
    public PLPStoreModeViewState(StoreModeContentUiModel storeModeContentUiModel, boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 1) != 0) {
            StoreModeContentUiModel.INSTANCE.getClass();
            storeModeContentUiModel = StoreModeContentUiModel.initialValue;
        }
        this(storeModeContentUiModel, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? false : z2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PLPStoreModeViewState)) {
            return false;
        }
        PLPStoreModeViewState pLPStoreModeViewState = (PLPStoreModeViewState) obj;
        return this.f65037a == pLPStoreModeViewState.f65037a && this.f65038b == pLPStoreModeViewState.f65038b && this.f65039c == pLPStoreModeViewState.f65039c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f65039c) + o60.b(this.f65037a.hashCode() * 31, 31, this.f65038b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PLPStoreModeViewState(content=");
        sb.append(this.f65037a);
        sb.append(", isPlpV3GridViewEnabled=");
        sb.append(this.f65038b);
        sb.append(", isAiCompanionEnabled=");
        return a.p(sb, this.f65039c, ")");
    }

    public PLPStoreModeViewState(StoreModeContentUiModel storeModeContentUiModel, boolean z, boolean z2) {
        storeModeContentUiModel.getClass();
        this.f65037a = storeModeContentUiModel;
        this.f65038b = z;
        this.f65039c = z2;
    }

    public PLPStoreModeViewState() {
        this(null, false, false, 7, null);
    }
}
