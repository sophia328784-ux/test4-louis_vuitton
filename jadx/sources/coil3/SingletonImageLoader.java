package coil3;

import android.content.Context;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0004R\u0013\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00028\u0002X\u0082\u0004¨\u0006\u0005"}, d2 = {"Lcoil3/SingletonImageLoader;", "", "Lkotlinx/atomicfu/AtomicRef;", "reference", "Factory", "io.coil-kt.coil3:coil"}, k = 1, mv = {2, 2, 0}, xi = 48)
public abstract class SingletonImageLoader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AtomicReference f21263a = new AtomicReference(null);

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Lcoil3/SingletonImageLoader$Factory;", "", "io.coil-kt.coil3:coil"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public interface Factory {
        RealImageLoader b(Context context);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static final ImageLoader a(Context context) {
        ImageLoader imageLoader;
        ImageLoader imageLoader2;
        Factory factory;
        Factory factory2;
        Factory factory3;
        Factory factory4;
        AtomicReference atomicReference = f21263a;
        Object obj = atomicReference.get();
        ImageLoader imageLoader3 = obj instanceof ImageLoader ? (ImageLoader) obj : null;
        if (imageLoader3 != null) {
            return imageLoader3;
        }
        ImageLoader imageLoaderB = null;
        while (true) {
            Object obj2 = atomicReference.get();
            if (obj2 instanceof ImageLoader) {
                imageLoader = (ImageLoader) obj2;
                imageLoader2 = imageLoaderB;
            } else {
                if (imageLoaderB == null) {
                    Context applicationContext = context.getApplicationContext();
                    if (obj2 instanceof Factory) {
                        factory4 = (Factory) obj2;
                    } else {
                        factory = null;
                    }
                    if (factory != null) {
                        factory = factory4;
                        imageLoaderB = factory.b(applicationContext);
                    } else {
                        if (applicationContext instanceof Factory) {
                            factory3 = (Factory) applicationContext;
                        } else {
                            factory2 = null;
                        }
                        if (factory2 != null) {
                            factory = factory4;
                            factory = factory4;
                            factory2 = factory3;
                            imageLoaderB = factory2.b(applicationContext);
                        } else {
                            factory = factory4;
                            factory = factory4;
                            factory2 = factory3;
                            imageLoaderB = SingletonImageLoaderKt.f21264a.b(applicationContext);
                        }
                    }
                }
                imageLoader = imageLoaderB;
                imageLoader2 = imageLoader;
            }
            while (!atomicReference.compareAndSet(obj2, imageLoader)) {
                if (atomicReference.get() != obj2) {
                    imageLoaderB = imageLoader2;
                }
            }
            return imageLoader;
        }
    }
}
