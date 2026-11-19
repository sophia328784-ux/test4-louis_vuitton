package androidx.compose.foundation.lazy.layout;

import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.cms.CMSAttributeTableGenerator;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\tB\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;", "", "Landroidx/compose/runtime/saveable/SaveableStateHolder;", "saveableStateHolder", "Lkotlin/Function0;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;", "itemProvider", "<init>", "(Landroidx/compose/runtime/saveable/SaveableStateHolder;Lkotlin/jvm/functions/Function0;)V", "CachedItemContent", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyLayoutItemContentFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SaveableStateHolder f5475a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function0 f5476b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableScatterMap f5477c = ScatterMapKt.b();

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0082\u0004\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory$CachedItemContent;", "", "", "index", ConfigurationName.KEY, CMSAttributeTableGenerator.CONTENT_TYPE, "<init>", "(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;ILjava/lang/Object;Ljava/lang/Object;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class CachedItemContent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f5478a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f5479b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f5480c;
        public ComposableLambdaImpl d;

        public CachedItemContent(int i2, Object obj, Object obj2) {
            this.f5478a = obj;
            this.f5479b = obj2;
            this.f5480c = i2;
        }
    }

    public LazyLayoutItemContentFactory(SaveableStateHolder saveableStateHolder, Function0<? extends LazyLayoutItemProvider> function0) {
        this.f5475a = saveableStateHolder;
        this.f5476b = function0;
    }

    public final Function2 a(Object obj, Object obj2, int i2) {
        MutableScatterMap mutableScatterMap = this.f5477c;
        CachedItemContent cachedItemContent = (CachedItemContent) mutableScatterMap.e(obj);
        int i3 = 0;
        if (cachedItemContent != null && cachedItemContent.f5480c == i2 && Intrinsics.c(cachedItemContent.f5479b, obj2)) {
            ComposableLambdaImpl composableLambdaImpl = cachedItemContent.d;
            if (composableLambdaImpl != null) {
                return composableLambdaImpl;
            }
            ComposableLambdaImpl composableLambdaImpl2 = new ComposableLambdaImpl(818252804, true, new b(LazyLayoutItemContentFactory.this, cachedItemContent, i3));
            cachedItemContent.d = composableLambdaImpl2;
            return composableLambdaImpl2;
        }
        CachedItemContent cachedItemContent2 = new CachedItemContent(i2, obj, obj2);
        mutableScatterMap.o(obj, cachedItemContent2);
        ComposableLambdaImpl composableLambdaImpl3 = cachedItemContent2.d;
        if (composableLambdaImpl3 != null) {
            return composableLambdaImpl3;
        }
        ComposableLambdaImpl composableLambdaImpl4 = new ComposableLambdaImpl(818252804, true, new b(LazyLayoutItemContentFactory.this, cachedItemContent2, i3));
        cachedItemContent2.d = composableLambdaImpl4;
        return composableLambdaImpl4;
    }

    public final Object b(Object obj) {
        if (obj == null) {
            return null;
        }
        CachedItemContent cachedItemContent = (CachedItemContent) this.f5477c.e(obj);
        if (cachedItemContent != null) {
            return cachedItemContent.f5479b;
        }
        LazyLayoutItemProvider lazyLayoutItemProvider = (LazyLayoutItemProvider) this.f5476b.mo47invoke();
        int iC = lazyLayoutItemProvider.c(obj);
        if (iC != -1) {
            return lazyLayoutItemProvider.f(iC);
        }
        return null;
    }
}
