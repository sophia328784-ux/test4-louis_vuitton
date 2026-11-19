package kotlin.text;

import java.util.List;
import java.util.regex.Matcher;
import kotlin.Metadata;
import kotlin.collections.AbstractList;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlin/text/MatcherMatchResult;", "Lkotlin/text/MatchResult;", "Ljava/util/regex/Matcher;", "matcher", "", "input", "<init>", "(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
final class MatcherMatchResult implements MatchResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Matcher f74546a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CharSequence f74547b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MatcherMatchResult$groups$1 f74548c;
    public MatcherMatchResult$groupValues$1 d;

    public MatcherMatchResult(Matcher matcher, CharSequence charSequence) {
        matcher.getClass();
        charSequence.getClass();
        this.f74546a = matcher;
        this.f74547b = charSequence;
        this.f74548c = new MatcherMatchResult$groups$1(this);
    }

    @Override // kotlin.text.MatchResult
    /* JADX INFO: renamed from: a, reason: from getter */
    public final MatcherMatchResult$groups$1 getF74548c() {
        return this.f74548c;
    }

    @Override // kotlin.text.MatchResult
    public final MatchResult.Destructured b() {
        return new MatchResult.Destructured(this);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [kotlin.text.MatcherMatchResult$groupValues$1] */
    @Override // kotlin.text.MatchResult
    public final List c() {
        if (this.d == null) {
            this.d = new AbstractList<String>() { // from class: kotlin.text.MatcherMatchResult$groupValues$1
                @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
                public final /* bridge */ boolean contains(Object obj) {
                    if (obj instanceof String) {
                        return super.contains((String) obj);
                    }
                    return false;
                }

                @Override // kotlin.collections.AbstractCollection
                /* JADX INFO: renamed from: f */
                public final int getF8300e() {
                    return this.f74549c.f74546a.groupCount() + 1;
                }

                @Override // kotlin.collections.AbstractList, java.util.List
                public final Object get(int i2) {
                    String strGroup = this.f74549c.f74546a.group(i2);
                    return strGroup == null ? "" : strGroup;
                }

                @Override // kotlin.collections.AbstractList, java.util.List
                public final /* bridge */ int indexOf(Object obj) {
                    if (obj instanceof String) {
                        return super.indexOf((String) obj);
                    }
                    return -1;
                }

                @Override // kotlin.collections.AbstractList, java.util.List
                public final /* bridge */ int lastIndexOf(Object obj) {
                    if (obj instanceof String) {
                        return super.lastIndexOf((String) obj);
                    }
                    return -1;
                }
            };
        }
        MatcherMatchResult$groupValues$1 matcherMatchResult$groupValues$1 = this.d;
        matcherMatchResult$groupValues$1.getClass();
        return matcherMatchResult$groupValues$1;
    }

    @Override // kotlin.text.MatchResult
    public final IntRange d() {
        Matcher matcher = this.f74546a;
        return RangesKt.j(matcher.start(), matcher.end());
    }

    @Override // kotlin.text.MatchResult
    public final String getValue() {
        String strGroup = this.f74546a.group();
        strGroup.getClass();
        return strGroup;
    }

    @Override // kotlin.text.MatchResult
    public final MatchResult next() {
        Matcher matcher = this.f74546a;
        int iEnd = matcher.end() + (matcher.end() == matcher.start() ? 1 : 0);
        CharSequence charSequence = this.f74547b;
        if (iEnd > charSequence.length()) {
            return null;
        }
        Matcher matcher2 = matcher.pattern().matcher(charSequence);
        matcher2.getClass();
        if (matcher2.find(iEnd)) {
            return new MatcherMatchResult(matcher2, charSequence);
        }
        return null;
    }
}
