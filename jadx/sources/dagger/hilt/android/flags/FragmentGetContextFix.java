package dagger.hilt.android.flags;

import android.content.Context;
import dagger.hilt.android.EntryPointAccessors;
import dagger.hilt.internal.Preconditions;
import java.lang.annotation.ElementType;
import java.lang.annotation.Target;
import java.util.AbstractCollection;
import java.util.Set;
import javax.inject.Qualifier;

/* JADX INFO: loaded from: classes4.dex */
public abstract class FragmentGetContextFix {

    @Target({ElementType.METHOD, ElementType.PARAMETER, ElementType.FIELD})
    @Qualifier
    public @interface DisableFragmentGetContextFix {
    }

    public interface FragmentGetContextFixEntryPoint {
        Set k();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean a(Context context) {
        Set setK = ((FragmentGetContextFixEntryPoint) EntryPointAccessors.a(context, FragmentGetContextFixEntryPoint.class)).k();
        Preconditions.a(setK.size() <= 1, "Cannot bind the flag @DisableFragmentGetContextFix more than once.", new Object[0]);
        if (((AbstractCollection) setK).isEmpty()) {
            return true;
        }
        return ((Boolean) setK.iterator().next()).booleanValue();
    }
}
