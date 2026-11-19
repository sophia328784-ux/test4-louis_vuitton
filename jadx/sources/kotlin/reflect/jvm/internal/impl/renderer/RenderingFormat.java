package kotlin.reflect.jvm.internal.impl.renderer;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public abstract class RenderingFormat {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ RenderingFormat[] $VALUES;
    public static final RenderingFormat HTML;
    public static final RenderingFormat PLAIN;

    public static final class HTML extends RenderingFormat {
        @Override // kotlin.reflect.jvm.internal.impl.renderer.RenderingFormat
        public final String a(String str) {
            str.getClass();
            return StringsKt.J(StringsKt.J(str, "<", "&lt;"), ">", "&gt;");
        }
    }

    public static final class PLAIN extends RenderingFormat {
        @Override // kotlin.reflect.jvm.internal.impl.renderer.RenderingFormat
        public final String a(String str) {
            str.getClass();
            return str;
        }
    }

    static {
        PLAIN plain = new PLAIN("PLAIN", 0, null);
        PLAIN = plain;
        HTML html = new HTML("HTML", 1, null);
        HTML = html;
        RenderingFormat[] renderingFormatArr = {plain, html};
        $VALUES = renderingFormatArr;
        $ENTRIES = EnumEntriesKt.a(renderingFormatArr);
    }

    public RenderingFormat(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        super(str, i2);
    }

    public static RenderingFormat valueOf(String str) {
        return (RenderingFormat) Enum.valueOf(RenderingFormat.class, str);
    }

    public static RenderingFormat[] values() {
        return (RenderingFormat[]) $VALUES.clone();
    }

    public abstract String a(String str);
}
