package defpackage;

import com.perfectcorp.perfectlib.TagHandler;
import com.perfectcorp.perfectlib.TagType;
import com.perfectcorp.perfectlib.ph.database.ymk.generictag.f;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.functions.Predicate;
import java.util.AbstractCollection;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class p21 implements Function, Predicate {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TagType f78734b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f78735c;

    public /* synthetic */ p21(TagType tagType, boolean z) {
        this.f78734b = tagType;
        this.f78735c = z;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        List list = (List) obj;
        return (this.f78734b == TagType.LOOK || !this.f78735c) ? list : TagHandler.d(list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Predicate
    public boolean test(Object obj) {
        String string = Long.toString(((f) obj).f41190b);
        TagType tagType = this.f78734b;
        List listC = TagHandler.c(tagType, string);
        if (tagType == TagType.LOOK || !this.f78735c) {
            return !((AbstractCollection) listC).isEmpty();
        }
        return !((AbstractCollection) TagHandler.d(listC)).isEmpty();
    }
}
