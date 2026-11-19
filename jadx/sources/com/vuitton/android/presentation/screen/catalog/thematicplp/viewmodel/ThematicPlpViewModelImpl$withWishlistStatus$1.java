package com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel;

import com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeItemUiModel;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModelImpl", f = "ThematicPlpViewModelImpl.kt", l = {358}, m = "withWishlistStatus", v = 2)
final class ThematicPlpViewModelImpl$withWishlistStatus$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Collection f55576b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Iterator f55577c;
    public ThemeItemUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Collection f55578e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f55579f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public /* synthetic */ Object f55580h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ ThematicPlpViewModelImpl f55581i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f55582j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThematicPlpViewModelImpl$withWishlistStatus$1(ThematicPlpViewModelImpl thematicPlpViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f55581i = thematicPlpViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f55580h = obj;
        this.f55582j |= Integer.MIN_VALUE;
        return ThematicPlpViewModelImpl.yc(this.f55581i, null, this);
    }
}
