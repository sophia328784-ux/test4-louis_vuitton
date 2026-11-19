package androidx.compose.ui.text;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b'\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/text/LinkAnnotation;", "Landroidx/compose/ui/text/AnnotatedString$Annotation;", "Url", "Clickable", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class LinkAnnotation implements AnnotatedString.Annotation {
    public LinkAnnotation(DefaultConstructorMarker defaultConstructorMarker) {
    }

    /* JADX INFO: renamed from: a */
    public abstract LinkInteractionListener getF10460c();

    /* JADX INFO: renamed from: b */
    public abstract TextLinkStyles getF10459b();

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/ui/text/LinkAnnotation$Clickable;", "Landroidx/compose/ui/text/LinkAnnotation;", "", "tag", "Landroidx/compose/ui/text/TextLinkStyles;", "styles", "Landroidx/compose/ui/text/LinkInteractionListener;", "linkInteractionListener", "<init>", "(Ljava/lang/String;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/LinkInteractionListener;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Clickable extends LinkAnnotation {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f10455a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TextLinkStyles f10456b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final LinkInteractionListener f10457c;

        public Clickable(String str, TextLinkStyles textLinkStyles, LinkInteractionListener linkInteractionListener) {
            super(null);
            this.f10455a = str;
            this.f10456b = textLinkStyles;
            this.f10457c = linkInteractionListener;
        }

        @Override // androidx.compose.ui.text.LinkAnnotation
        /* JADX INFO: renamed from: a, reason: from getter */
        public final LinkInteractionListener getF10460c() {
            return this.f10457c;
        }

        @Override // androidx.compose.ui.text.LinkAnnotation
        /* JADX INFO: renamed from: b, reason: from getter */
        public final TextLinkStyles getF10459b() {
            return this.f10456b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Clickable)) {
                return false;
            }
            Clickable clickable = (Clickable) obj;
            return Intrinsics.c(this.f10455a, clickable.f10455a) && Intrinsics.c(this.f10456b, clickable.f10456b) && Intrinsics.c(this.f10457c, clickable.f10457c);
        }

        public final int hashCode() {
            int iHashCode = this.f10455a.hashCode() * 31;
            TextLinkStyles textLinkStyles = this.f10456b;
            int iHashCode2 = (iHashCode + (textLinkStyles != null ? textLinkStyles.hashCode() : 0)) * 31;
            LinkInteractionListener linkInteractionListener = this.f10457c;
            return iHashCode2 + (linkInteractionListener != null ? linkInteractionListener.hashCode() : 0);
        }

        public final String toString() {
            return fc.l(new StringBuilder("LinkAnnotation.Clickable(tag="), this.f10455a, ')');
        }

        public /* synthetic */ Clickable(String str, TextLinkStyles textLinkStyles, LinkInteractionListener linkInteractionListener, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? null : textLinkStyles, linkInteractionListener);
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/ui/text/LinkAnnotation$Url;", "Landroidx/compose/ui/text/LinkAnnotation;", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "Landroidx/compose/ui/text/TextLinkStyles;", "styles", "Landroidx/compose/ui/text/LinkInteractionListener;", "linkInteractionListener", "<init>", "(Ljava/lang/String;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/LinkInteractionListener;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Url extends LinkAnnotation {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f10458a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TextLinkStyles f10459b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final LinkInteractionListener f10460c;

        public /* synthetic */ Url(String str, TextLinkStyles textLinkStyles, LinkInteractionListener linkInteractionListener, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? null : textLinkStyles, (i2 & 4) != 0 ? null : linkInteractionListener);
        }

        @Override // androidx.compose.ui.text.LinkAnnotation
        /* JADX INFO: renamed from: a, reason: from getter */
        public final LinkInteractionListener getF10460c() {
            return this.f10460c;
        }

        @Override // androidx.compose.ui.text.LinkAnnotation
        /* JADX INFO: renamed from: b, reason: from getter */
        public final TextLinkStyles getF10459b() {
            return this.f10459b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Url)) {
                return false;
            }
            Url url = (Url) obj;
            return Intrinsics.c(this.f10458a, url.f10458a) && Intrinsics.c(this.f10459b, url.f10459b) && Intrinsics.c(this.f10460c, url.f10460c);
        }

        public final int hashCode() {
            int iHashCode = this.f10458a.hashCode() * 31;
            TextLinkStyles textLinkStyles = this.f10459b;
            int iHashCode2 = (iHashCode + (textLinkStyles != null ? textLinkStyles.hashCode() : 0)) * 31;
            LinkInteractionListener linkInteractionListener = this.f10460c;
            return iHashCode2 + (linkInteractionListener != null ? linkInteractionListener.hashCode() : 0);
        }

        public final String toString() {
            return fc.l(new StringBuilder("LinkAnnotation.Url(url="), this.f10458a, ')');
        }

        public Url(String str, TextLinkStyles textLinkStyles, LinkInteractionListener linkInteractionListener) {
            super(null);
            this.f10458a = str;
            this.f10459b = textLinkStyles;
            this.f10460c = linkInteractionListener;
        }
    }
}
