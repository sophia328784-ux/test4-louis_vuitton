package com.dynatrace.agent.userinteraction.mapper;

import com.dynatrace.agent.compose.userinteraction.model.ComposeElementInfo;
import com.dynatrace.agent.compose.userinteraction.model.Label;
import com.dynatrace.agent.userinteraction.model.UiElement;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/agent/userinteraction/mapper/ComposeTouchEventMapper;", "", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class ComposeTouchEventMapper {

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f27138a;

        static {
            int[] iArr = new int[Label.Origin.values().length];
            try {
                iArr[Label.Origin.TEXT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Label.Origin.MASKED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Label.Origin.COMPONENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f27138a = iArr;
        }
    }

    public static UiElement a(ComposeElementInfo composeElementInfo) {
        UiElement.Name.Origin origin;
        composeElementInfo.getClass();
        Label label = composeElementInfo.f26689c;
        String str = label.f26694a;
        int i2 = WhenMappings.f27138a[label.f26695b.ordinal()];
        if (i2 == 1) {
            origin = UiElement.Name.Origin.TEXT;
        } else if (i2 == 2) {
            origin = UiElement.Name.Origin.MASKED;
        } else {
            if (i2 != 3) {
                v40.g();
                return null;
            }
            origin = UiElement.Name.Origin.COMPONENT;
        }
        return new UiElement(new UiElement.Name(str, origin), CollectionsKt.O(composeElementInfo.f26690e), composeElementInfo.f26688b);
    }
}
