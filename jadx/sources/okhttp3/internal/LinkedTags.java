package okhttp3.internal;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KClass;
import kotlin.sequences.SequencesKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0003B%\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0010\u0006\u001a\u00028\u0000\u0012\u0006\u0010\u0007\u001a\u00020\u0003¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lokhttp3/internal/LinkedTags;", "", "K", "Lokhttp3/internal/Tags;", "Lkotlin/reflect/KClass;", ConfigurationName.KEY, "value", "next", "<init>", "(Lkotlin/reflect/KClass;Ljava/lang/Object;Lokhttp3/internal/Tags;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class LinkedTags<K> extends Tags {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KClass f77011a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f77012b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Tags f77013c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LinkedTags(KClass<K> kClass, K k2, Tags tags) {
        super(null);
        kClass.getClass();
        k2.getClass();
        tags.getClass();
        this.f77011a = kClass;
        this.f77012b = k2;
        this.f77013c = tags;
    }

    @Override // okhttp3.internal.Tags
    public final Object a(KClass kClass) {
        kClass.getClass();
        return kClass.equals(this.f77011a) ? JvmClassMappingKt.b(kClass).cast(this.f77012b) : this.f77013c.a(kClass);
    }

    @Override // okhttp3.internal.Tags
    public final Tags b(KClass kClass, Object obj) {
        KClass kClass2 = this.f77011a;
        boolean zEquals = kClass.equals(kClass2);
        Tags tags = this.f77013c;
        if (!zEquals) {
            Tags tagsB = tags.b(kClass, null);
            if (tagsB != tags) {
                this = new LinkedTags<>(kClass2, this.f77012b, tagsB);
            }
            tags = this;
        }
        return obj != null ? new LinkedTags(kClass, obj, tags) : tags;
    }

    public final String toString() {
        final int i2 = 0;
        List listF0 = CollectionsKt.f0(SequencesKt.x(SequencesKt.n(this, new Function1() { // from class: okhttp3.internal.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LinkedTags linkedTags = (LinkedTags) obj;
                switch (i2) {
                    case 0:
                        linkedTags.getClass();
                        Tags tags = linkedTags.f77013c;
                        if (tags instanceof LinkedTags) {
                            return (LinkedTags) tags;
                        }
                        return null;
                    default:
                        linkedTags.getClass();
                        StringBuilder sb = new StringBuilder();
                        sb.append(linkedTags.f77011a);
                        sb.append('=');
                        sb.append(linkedTags.f77012b);
                        return sb.toString();
                }
            }
        })));
        final int i3 = 1;
        return CollectionsKt.K(listF0, null, "{", "}", new Function1() { // from class: okhttp3.internal.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                LinkedTags linkedTags = (LinkedTags) obj;
                switch (i3) {
                    case 0:
                        linkedTags.getClass();
                        Tags tags = linkedTags.f77013c;
                        if (tags instanceof LinkedTags) {
                            return (LinkedTags) tags;
                        }
                        return null;
                    default:
                        linkedTags.getClass();
                        StringBuilder sb = new StringBuilder();
                        sb.append(linkedTags.f77011a);
                        sb.append('=');
                        sb.append(linkedTags.f77012b);
                        return sb.toString();
                }
            }
        }, 25);
    }
}
