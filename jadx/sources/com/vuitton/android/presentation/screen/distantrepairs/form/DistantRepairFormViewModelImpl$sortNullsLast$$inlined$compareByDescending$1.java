package com.vuitton.android.presentation.screen.distantrepairs.form;

import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairPhoto;
import java.util.Comparator;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final class DistantRepairFormViewModelImpl$sortNullsLast$$inlined$compareByDescending$1<T> implements Comparator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Comparator f57198b;

    public DistantRepairFormViewModelImpl$sortNullsLast$$inlined$compareByDescending$1(Comparator comparator) {
        this.f57198b = comparator;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.f57198b.compare(Boolean.valueOf(((DistantRepairPhoto) obj2) != null), Boolean.valueOf(((DistantRepairPhoto) obj) != null));
    }
}
