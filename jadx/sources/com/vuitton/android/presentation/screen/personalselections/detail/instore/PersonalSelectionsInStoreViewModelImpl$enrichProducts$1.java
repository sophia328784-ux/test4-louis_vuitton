package com.vuitton.android.presentation.screen.personalselections.detail.instore;

import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionStoreUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionTypeUiModel;
import com.vuitton.foundation.model.domain.model.productshortlist.ProductShort;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.personalselections.detail.instore.PersonalSelectionsInStoreViewModelImpl", f = "PersonalSelectionsInStoreViewModelImpl.kt", l = {266, 276}, m = "enrichProducts", v = 2)
final class PersonalSelectionsInStoreViewModelImpl$enrichProducts$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public SelectionTypeUiModel f62520b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f62521c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f62522e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f62523f;
    public List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public SelectionStoreUiModel f62524h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public List f62525i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public List f62526j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Collection f62527k;
    public Collection l;
    public Iterator m;
    public Map n;
    public ProductShort o;
    public int p;
    public int q;
    public int r;
    public int s;
    public int t;
    public int u;
    public boolean v;
    public /* synthetic */ Object w;
    public final /* synthetic */ PersonalSelectionsInStoreViewModelImpl x;
    public int y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PersonalSelectionsInStoreViewModelImpl$enrichProducts$1(PersonalSelectionsInStoreViewModelImpl personalSelectionsInStoreViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.x = personalSelectionsInStoreViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.w = obj;
        this.y |= Integer.MIN_VALUE;
        return PersonalSelectionsInStoreViewModelImpl.yc(this.x, null, null, null, null, null, null, null, null, this);
    }
}
