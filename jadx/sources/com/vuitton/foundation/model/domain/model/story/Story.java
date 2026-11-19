package com.vuitton.foundation.model.domain.model.story;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.fc;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/story/Story;", "", "", ConfigurationName.KEY, "title", "faviconUrl", "", "Lcom/vuitton/foundation/model/domain/model/story/StorySlide;", "slides", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Story {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68268a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68269b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f68270c;
    public final List d;

    public Story(String str, String str2, String str3, List<StorySlide> list) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        list.getClass();
        this.f68268a = str;
        this.f68269b = str2;
        this.f68270c = str3;
        this.d = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Story)) {
            return false;
        }
        Story story = (Story) obj;
        return Intrinsics.c(this.f68268a, story.f68268a) && Intrinsics.c(this.f68269b, story.f68269b) && Intrinsics.c(this.f68270c, story.f68270c) && Intrinsics.c(this.d, story.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + fc.b(fc.b(this.f68268a.hashCode() * 31, 31, this.f68269b), 31, this.f68270c);
    }

    public final String toString() {
        return o60.o(this.f68270c, ", slides=", ")", fc.s("Story(key=", this.f68268a, ", title=", this.f68269b, ", faviconUrl="), this.d);
    }
}
