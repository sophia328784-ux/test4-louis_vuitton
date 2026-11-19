package com.sightcall.universal.internal.ui;

import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.sightcall.universal.internal.util.Utils;
import com.sightcall.universal.internal.view.MyVideoConsumerThumbnailContainer;
import com.sightcall.universal.internal.view.MyVideoConsumerView;
import com.sightcall.universal.internal.view.MyVideoProducerWrapper;
import com.sightcall.universal.model.Session;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public enum ViewOrder {
    CONSUMER_THUMBNAILS_PRODUCER,
    PRODUCER_THUMBNAILS_CONSUMER;

    private static ViewOrder expected(Session session, Call call) {
        return Utils.videoProducerToFullscreen(session, call) ? PRODUCER_THUMBNAILS_CONSUMER : CONSUMER_THUMBNAILS_PRODUCER;
    }

    private static ViewOrder get(FrameLayout frameLayout, MyVideoConsumerView myVideoConsumerView, MyVideoConsumerThumbnailContainer myVideoConsumerThumbnailContainer, MyVideoProducerWrapper myVideoProducerWrapper) {
        int iIndexOfChild = frameLayout.indexOfChild(myVideoConsumerView);
        int iIndexOfChild2 = frameLayout.indexOfChild(myVideoConsumerThumbnailContainer);
        return (iIndexOfChild >= iIndexOfChild2 || iIndexOfChild2 >= frameLayout.indexOfChild(myVideoProducerWrapper)) ? PRODUCER_THUMBNAILS_CONSUMER : CONSUMER_THUMBNAILS_PRODUCER;
    }

    public static void reorderIfNeeded(Session session, Call call, FrameLayout frameLayout, MyVideoConsumerView myVideoConsumerView, MyVideoConsumerThumbnailContainer myVideoConsumerThumbnailContainer, MyVideoProducerWrapper myVideoProducerWrapper, ViewGroup viewGroup) {
        if (get(frameLayout, myVideoConsumerView, myVideoConsumerThumbnailContainer, myVideoProducerWrapper) == expected(session, call)) {
            return;
        }
        int iIndexOfChild = frameLayout.indexOfChild(myVideoProducerWrapper);
        frameLayout.removeView(viewGroup);
        frameLayout.addView(viewGroup, iIndexOfChild + 1);
        frameLayout.removeView(myVideoConsumerThumbnailContainer);
        frameLayout.addView(myVideoConsumerThumbnailContainer, iIndexOfChild);
        frameLayout.removeView(myVideoConsumerView);
        frameLayout.addView(myVideoConsumerView, iIndexOfChild);
    }
}
