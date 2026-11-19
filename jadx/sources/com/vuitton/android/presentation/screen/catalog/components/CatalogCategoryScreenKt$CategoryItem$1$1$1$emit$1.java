package com.vuitton.android.presentation.screen.catalog.components;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.catalog.components.CatalogCategoryScreenKt$CategoryItem$1$1$1", f = "CatalogCategoryScreen.kt", l = {331}, m = "emit", v = 2)
final class CatalogCategoryScreenKt$CategoryItem$1$1$1$emit$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f55262b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CatalogCategoryScreenKt$CategoryItem$1$1.AnonymousClass1 f55263c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogCategoryScreenKt$CategoryItem$1$1$1$emit$1(CatalogCategoryScreenKt$CategoryItem$1$1.AnonymousClass1 anonymousClass1, Continuation continuation) {
        super(continuation);
        this.f55263c = anonymousClass1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f55262b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f55263c.emit(null, this);
    }
}
