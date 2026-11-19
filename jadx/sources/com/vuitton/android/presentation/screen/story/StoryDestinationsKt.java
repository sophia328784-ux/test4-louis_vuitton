package com.vuitton.android.presentation.screen.story;

import android.content.Context;
import android.content.Intent;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class StoryDestinationsKt {
    public static final Intent a(StoryDestinations.ToStoryPage toStoryPage, Context context) {
        context.getClass();
        Intent intentAddFlags = StoryActivity.Companion.a(StoryActivity.t, context, toStoryPage.f65099a, 12).addFlags(4096);
        intentAddFlags.getClass();
        return intentAddFlags;
    }
}
