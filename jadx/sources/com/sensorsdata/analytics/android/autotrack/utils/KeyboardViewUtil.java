package com.sensorsdata.analytics.android.autotrack.utils;

import android.view.View;
import android.view.ViewGroup;
import com.sensorsdata.analytics.android.autotrack.R;
import com.sensorsdata.analytics.android.sdk.util.SAViewUtils;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public class KeyboardViewUtil {
    private static final String MATCH_RULE_KEYBOARD = "^([A-Za-z]|[0-9])";
    private static final String TAG_KEYBOARD = "keyboard_tag";
    private static boolean isSensorsCheckKeyboard = true;

    private static boolean getKeyboardSimilarFatherView(View view) {
        if (view.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (viewGroup.getTag(R.id.sensors_analytics_tag_view_keyboard) != null) {
                return true;
            }
            int childCount = viewGroup.getChildCount();
            if (childCount > 1) {
                int iIndexOfChild = viewGroup.indexOfChild(view);
                for (int i2 = 0; i2 < childCount; i2++) {
                    if (iIndexOfChild != i2) {
                        View childAt = viewGroup.getChildAt(i2);
                        if (childAt.getTag(R.id.sensors_analytics_tag_view_keyboard) != null) {
                            return true;
                        }
                        if (childAt instanceof ViewGroup) {
                            ViewGroup viewGroup2 = (ViewGroup) childAt;
                            int childCount2 = viewGroup2.getChildCount();
                            for (int i3 = 0; i3 < childCount2; i3++) {
                                if (Pattern.matches(MATCH_RULE_KEYBOARD, SAViewUtils.getViewContent(viewGroup2.getChildAt(i3)))) {
                                    viewGroup2.setTag(R.id.sensors_analytics_tag_view_keyboard, TAG_KEYBOARD);
                                    viewGroup.setTag(R.id.sensors_analytics_tag_view_keyboard, TAG_KEYBOARD);
                                    return true;
                                }
                            }
                        } else if (Pattern.matches(MATCH_RULE_KEYBOARD, SAViewUtils.getViewContent(childAt))) {
                            childAt.setTag(R.id.sensors_analytics_tag_view_keyboard, TAG_KEYBOARD);
                            viewGroup.setTag(R.id.sensors_analytics_tag_view_keyboard, TAG_KEYBOARD);
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    private static boolean getKeyboardSimilarView(View view) {
        if (!(view.getParent() instanceof ViewGroup)) {
            return getKeyboardSimilarFatherView((View) view.getParent());
        }
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup.getTag(R.id.sensors_analytics_tag_view_keyboard) != null) {
            return true;
        }
        int iIndexOfChild = viewGroup.indexOfChild(view);
        int childCount = viewGroup.getChildCount();
        if (childCount <= 1) {
            return getKeyboardSimilarFatherView(viewGroup);
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            if (iIndexOfChild != i2 && Pattern.matches(MATCH_RULE_KEYBOARD, SAViewUtils.getViewContent(viewGroup.getChildAt(i2)))) {
                viewGroup.setTag(R.id.sensors_analytics_tag_view_keyboard, TAG_KEYBOARD);
                return true;
            }
        }
        return getKeyboardSimilarFatherView(viewGroup);
    }

    public static boolean isKeyboardView(View view) {
        if (isSensorsCheckKeyboard && view != null && Pattern.matches(MATCH_RULE_KEYBOARD, SAViewUtils.getViewContent(view))) {
            return getKeyboardSimilarView(view);
        }
        return false;
    }
}
