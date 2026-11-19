package androidx.navigation.serialization;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.md;
import kotlin.Metadata;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"navigation-common_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class NavTypeConverter_androidKt {
    public static final Class a(SerialDescriptor serialDescriptor) {
        String strJ = StringsKt.J(serialDescriptor.getF75659a(), "?", "");
        try {
            return Class.forName(strJ);
        } catch (ClassNotFoundException unused) {
            if (StringsKt.k(strJ, FileUtils.HIDDEN_PREFIX, false)) {
                return Class.forName(new Regex("(\\.+)(?!.*\\.)").replace(strJ, "\\$"));
            }
            String strConcat = "Cannot find class with name \"" + serialDescriptor.getF75659a() + "\". Ensure that the serialName for this argument is the default fully qualified name";
            if (serialDescriptor.getF75548b() instanceof SerialKind.ENUM) {
                strConcat = strConcat.concat(".\nIf the build is minified, try annotating the Enum class with \"androidx.annotation.Keep\" to ensure the Enum is not removed.");
            }
            md.n(strConcat);
            return null;
        }
    }
}
