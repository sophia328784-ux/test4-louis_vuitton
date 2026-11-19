package arrow.core.extensions;

import arrow.Kind;
import arrow.typeclasses.Zip;
import java.lang.Comparable;
import kotlin.Deprecated;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bg\u0018\u0000*\u000e\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00000\u00012\u001e\u0012\u001a\u0012\u0018\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00028\u00000\u0004j\b\u0012\u0004\u0012\u00028\u0000`\u00060\u00032\b\u0012\u0004\u0012\u00028\u00000\u0007¨\u0006\b"}, d2 = {"Larrow/core/extensions/SortedMapKZip;", "", "K", "Larrow/typeclasses/Zip;", "Larrow/Kind;", "", "Larrow/core/SortedMapKPartialOf;", "Larrow/core/extensions/SortedMapKSemialign;", "arrow-core"}, k = 1, mv = {1, 4, 2})
public interface SortedMapKZip<K extends Comparable<? super K>> extends Zip<Kind<Object, ? extends K>>, SortedMapKSemialign<K> {
}
