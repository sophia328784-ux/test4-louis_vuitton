package com.networkbench.agent.impl.session.screen;

import android.app.Activity;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.TextPaint;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.networkbench.R;
import com.networkbench.agent.impl.floatbtnmanager.c;
import com.networkbench.agent.impl.fragmentadapt.f;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ab;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.com.google.gson.Gson;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonElement;
import defpackage.cj;
import defpackage.fc;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import org.bouncycastle.asn1.BERTags;

/* JADX INFO: loaded from: classes2.dex */
public class NBSScreenRecordControl implements ScreenRecordInterface {
    private static final String TAG = "NBSScreenRecordControl";
    private Set<Class<?>> ignoreClasses;
    private Set<String> ignoreConfigPageName;
    private Set<String> ignoreConfigViewsTags;
    private Set<String> ignorePagesName;
    private Set<Integer> ignoreViewsIds;
    private Set<String> ignoreViewsTags;
    private Set<Class<?>> ignoreWebViewClasses;
    private boolean maskImageEnabled;
    private boolean maskInputEnabled;
    private boolean maskTextEnabled;
    private List<Rect> rects;
    private List<WeakReference<View>> views;

    public static class NBSScreenRecordHolder {
        public static NBSScreenRecordControl resource = new NBSScreenRecordControl();

        private NBSScreenRecordHolder() {
        }
    }

    private NBSScreenRecordControl() {
        this.views = new CopyOnWriteArrayList();
        this.ignoreViewsIds = new CopyOnWriteArraySet();
        this.ignoreViewsTags = new CopyOnWriteArraySet();
        this.ignoreConfigViewsTags = new CopyOnWriteArraySet();
        this.ignoreClasses = new CopyOnWriteArraySet();
        this.ignoreWebViewClasses = new CopyOnWriteArraySet();
        this.ignorePagesName = new CopyOnWriteArraySet();
        this.ignoreConfigPageName = new CopyOnWriteArraySet();
        this.maskInputEnabled = false;
        this.maskTextEnabled = false;
        this.maskImageEnabled = false;
        this.rects = new CopyOnWriteArrayList();
        defaultWebviewIgnore();
    }

    private NBSMaskViewRect calcTextViewRect(View view) {
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            if ((textView.getText() != null && textView.getText().length() != 0) || (textView.getHint() != null && textView.getHint().length() != 0)) {
                Logger.debug(TAG, "text content is:" + ((Object) textView.getText()) + ", hint is:" + ((Object) textView.getHint()));
                Rect visibleRect = NBSViewHelper.getVisibleRect(view);
                if (visibleRect != null) {
                    int paddingTop = view.getPaddingTop();
                    int paddingBottom = view.getPaddingBottom();
                    int paddingLeft = view.getPaddingLeft();
                    int paddingRight = view.getPaddingRight();
                    int[] iArr = new int[2];
                    view.getLocationOnScreen(iArr);
                    if (visibleRect.height() < view.getHeight()) {
                        if (iArr[1] < visibleRect.top) {
                            paddingTop = 0;
                        } else {
                            paddingBottom = 0;
                        }
                    }
                    if (visibleRect.width() < view.getWidth()) {
                        if (iArr[0] < visibleRect.left) {
                            paddingLeft = 0;
                        } else {
                            paddingRight = 0;
                        }
                    }
                    return new NBSMaskViewRect(new Rect(visibleRect.left + paddingLeft, visibleRect.top + paddingTop, visibleRect.right - paddingRight, visibleRect.bottom - paddingBottom), NBSMaskViewType.OTHERS, view.getClass().getName());
                }
            }
        }
        return null;
    }

    private void defaultWebviewIgnore() {
        this.ignoreWebViewClasses.add(WebView.class);
        Class<?> clsJ = ak.j("com.tencent.smtt.sdk.WebView");
        if (clsJ != null) {
            this.ignoreWebViewClasses.add(clsJ);
        }
        Class<?> clsJ2 = ak.j("com.uc.webview.export.WebView");
        if (clsJ2 != null) {
            this.ignoreWebViewClasses.add(clsJ2);
        }
    }

    private Set<String> getAllIgnorePageName() {
        HashSet hashSet = new HashSet();
        hashSet.addAll(this.ignorePagesName);
        hashSet.addAll(this.ignoreConfigPageName);
        return hashSet;
    }

    private Set<String> getAllIgnoreViewsTags() {
        HashSet hashSet = new HashSet();
        hashSet.addAll(this.ignoreViewsTags);
        hashSet.addAll(this.ignoreConfigViewsTags);
        return hashSet;
    }

    private ArrayList<NBSMaskViewRect> getIgnoreRectFromRoot(View view) {
        ArrayList<NBSMaskViewRect> arrayList = new ArrayList<>();
        if (view != null) {
            if (view.getVisibility() != 0 || !view.getGlobalVisibleRect(new Rect())) {
                Logger.debug(TAG, "view is not visible, skip");
                return arrayList;
            }
            HashSet hashSet = new HashSet();
            hashSet.addAll(this.ignoreClasses);
            if (this.maskInputEnabled) {
                hashSet.add(EditText.class);
            }
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                if (((Class) it.next()).isInstance(view)) {
                    NBSMaskViewRect ignoreViewRect = getIgnoreViewRect(view, true, NBSMaskViewType.OTHERS);
                    if (ignoreViewRect != null) {
                        arrayList.add(ignoreViewRect);
                        return arrayList;
                    }
                }
            }
            Iterator<Class<?>> it2 = this.ignoreWebViewClasses.iterator();
            while (it2.hasNext()) {
                if (it2.next().isInstance(view)) {
                    NBSMaskViewRect ignoreViewRect2 = getIgnoreViewRect(view, true, NBSMaskViewType.WEB_VIEW);
                    if (ignoreViewRect2 == null) {
                        break;
                    }
                    arrayList.add(ignoreViewRect2);
                    break;
                }
            }
            if (this.ignoreViewsIds.contains(Integer.valueOf(view.getId())) || getAllIgnoreViewsTags().contains(view.getTag(R.string.view_attached_id))) {
                NBSMaskViewRect ignoreViewRect3 = getIgnoreViewRect(view, true, NBSMaskViewType.OTHERS);
                if (ignoreViewRect3 != null) {
                    arrayList.add(ignoreViewRect3);
                }
            } else {
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                        arrayList.addAll(getIgnoreRectFromRoot(viewGroup.getChildAt(i2)));
                    }
                } else {
                    NBSMaskViewRect ignoreViewRect4 = getIgnoreViewRect(view, false, NBSMaskViewType.OTHERS);
                    if (ignoreViewRect4 != null) {
                        arrayList.add(ignoreViewRect4);
                        return arrayList;
                    }
                }
            }
        }
        return arrayList;
    }

    private NBSMaskViewRect getIgnoreViewRect(View view, boolean z, NBSMaskViewType nBSMaskViewType) {
        boolean z2;
        Rect visibleRect;
        if (view == null) {
            return null;
        }
        if (this.maskTextEnabled && (view instanceof TextView) && !(view instanceof EditText)) {
            return calcTextViewRect(view);
        }
        if (this.maskImageEnabled && ((view instanceof ImageView) || (view instanceof ImageButton))) {
            nBSMaskViewType = NBSMaskViewType.IMAGE;
            z2 = true;
        } else {
            z2 = false;
        }
        if (view instanceof EditText) {
            EditText editText = (EditText) view;
            Logger.debug(TAG, "inputType:" + editText.getInputType());
            if ((editText.getInputType() & 16) > 0 || (editText.getInputType() & 128) > 0 || (editText.getInputType() & 144) > 0 || (editText.getInputType() & BERTags.FLAGS) > 0) {
                Logger.debug(TAG, "find password inputType");
                z2 = true;
            }
            if (this.maskInputEnabled) {
                z2 = true;
            }
        }
        if (!(z ? true : z2) || (visibleRect = NBSViewHelper.getVisibleRect(view)) == null) {
            return null;
        }
        NBSMaskViewRect nBSMaskViewRect = new NBSMaskViewRect(visibleRect, nBSMaskViewType, view.getClass().getName());
        if (nBSMaskViewType == NBSMaskViewType.WEB_VIEW) {
            Object tag = view.getTag(R.string.webview_uuid_tag);
            if (tag != null && (tag instanceof String)) {
                nBSMaskViewRect.setViewId((String) tag);
                return nBSMaskViewRect;
            }
            String strB = ab.b();
            view.setTag(R.string.webview_uuid_tag, strB);
            nBSMaskViewRect.setViewId(strB);
        }
        return nBSMaskViewRect;
    }

    public static NBSScreenRecordControl getInstance() {
        return NBSScreenRecordHolder.resource;
    }

    private Rect getTextContextPositon(View view) {
        TextView textView;
        Layout layout;
        String string;
        if (view == null || !(view instanceof TextView) || (layout = (textView = (TextView) view).getLayout()) == null) {
            return null;
        }
        Rect rect = new Rect();
        layout.getLineBounds(layout.getLineForOffset(0), rect);
        Logger.debug(TAG, "yAxisTop: " + rect.top + ", xAxisLeft:" + layout.getPrimaryHorizontal(0));
        int primaryHorizontal = (int) layout.getPrimaryHorizontal(0);
        int secondaryHorizontal = (int) layout.getSecondaryHorizontal(textView.length());
        if (textView.getText() != null && textView.getText().length() != 0) {
            string = textView.getText().toString();
        } else if (textView.getHint() == null || textView.getHint().length() <= 0) {
            string = "";
        } else {
            string = textView.getHint().toString();
            Logger.debug(TAG, "hint is:" + textView.getHint().toString());
        }
        Logger.debug(TAG, "text is:" + string);
        TextPaint paint = textView.getPaint();
        paint.setTextSize(textView.getTextSize());
        int width = secondaryHorizontal - primaryHorizontal;
        if (!isSingleLine(textView)) {
            width = (textView.getWidth() - textView.getPaddingRight()) - textView.getPaddingLeft();
        }
        Logger.debug(TAG, "get textSize:" + textView.getTextSize());
        Rect rect2 = new Rect();
        paint.getTextBounds(string.toString(), 0, string.length(), rect2);
        int height = layout.getHeight();
        int paddingStart = textView.getPaddingStart();
        StringBuilder sbP = fc.p(paddingStart, textView.getPaddingTop(), "startPadding:", ", topPadding:", ", totalpadding:");
        sbP.append(textView.getTotalPaddingTop());
        Logger.debug(TAG, sbP.toString());
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        StringBuilder sbQ = fc.q(height, "height0:", ", height1:");
        sbQ.append(fontMetrics.descent - fontMetrics.ascent);
        sbQ.append(", heighit2:");
        sbQ.append((fontMetrics.bottom - fontMetrics.top) + fontMetrics.leading);
        Logger.debug(TAG, sbQ.toString());
        Rect rect3 = new Rect();
        view.getGlobalVisibleRect(rect3);
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        float f2 = paddingStart;
        Rect rect4 = new Rect((int) (layout.getPrimaryHorizontal(0) + f2), (int) (textView.getTotalPaddingTop() + rect.top + fontMetrics.leading), (int) (layout.getPrimaryHorizontal(0) + f2 + width), (int) (textView.getTotalPaddingTop() + rect.top + fontMetrics.leading + height));
        Logger.debug(TAG, "finalResult:" + rect4.toString() + ", content:" + string + ", " + rect4.left + ", " + rect4.top + ", " + rect4.right + ", " + rect4.bottom + ", " + rect4.width() + ", " + rect4.height() + ", textWidth:" + width + ", measureWidth:" + textView.getMeasuredWidth() + ", textBound.wdith:" + rect2.width());
        rect4.offset(rect3.left, rect3.top);
        if (rect3.height() < view.getHeight()) {
            int i2 = iArr[1];
            int i3 = rect3.top;
            if (i2 < i3) {
                rect4.top = i3;
                rect4.bottom = rect3.bottom - view.getPaddingBottom();
            } else {
                rect4.top = view.getPaddingTop() + i3;
                rect4.bottom = rect3.bottom;
            }
        }
        if (rect3.width() < view.getWidth()) {
            int i4 = iArr[0];
            int i5 = rect3.left;
            if (i4 < i5) {
                rect4.left = i5;
                rect4.right = rect3.right - view.getPaddingRight();
                return rect4;
            }
            rect4.left = view.getPaddingLeft() + i5;
            rect4.right = rect3.right;
        }
        return rect4;
    }

    private boolean isSingleLine(TextView textView) {
        return textView.getLineCount() == 1;
    }

    public NBSMaskViewRect getCurrentActivityMaskRect(int i2, int i3) {
        WeakReference<Activity> weakReferenceF = c.a().f();
        NBSMaskViewRect nBSMaskViewRect = new NBSMaskViewRect(new Rect(0, 0, i2, i3), NBSMaskViewType.ACTIVITY, (weakReferenceF == null || weakReferenceF.get() == null) ? "" : weakReferenceF.get().getClass().getName());
        Logger.debug(TAG, "activity ignore rects add  : " + nBSMaskViewRect);
        return nBSMaskViewRect;
    }

    public List<NBSMaskViewRect> getIgnoreFragmentRect() {
        StringBuffer stringBuffer = new StringBuffer();
        Iterator<String> it = getAllIgnorePageName().iterator();
        while (it.hasNext()) {
            stringBuffer.append(it.next());
            stringBuffer.append(";");
        }
        Logger.debug(TAG, "getIgnoreFragmentRect fragmentNames: " + stringBuffer.toString());
        return f.f37150a.a(stringBuffer.toString(), this.ignoreClasses);
    }

    public ArrayList<NBSMaskViewRect> getIgnoreViewsRectFromRoot(View view) {
        return getIgnoreRectFromRoot(view);
    }

    public ArrayList<NBSMaskViewRect> getIgnoredRects() {
        Rect visibleRect;
        List<WeakReference<View>> list = this.views;
        List<Rect> list2 = this.rects;
        ArrayList<NBSMaskViewRect> arrayList = new ArrayList<>();
        if (list.size() > 0) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                View view = list.get(i2).get();
                if (view != null && (visibleRect = NBSViewHelper.getVisibleRect(view)) != null) {
                    arrayList.add(new NBSMaskViewRect(visibleRect, NBSMaskViewType.OTHERS, view.getClass().getName()));
                }
            }
        }
        if (list2.size() > 0) {
            for (int i3 = 0; i3 < list2.size(); i3++) {
                NBSMaskViewRect nBSMaskViewRect = new NBSMaskViewRect(list2.get(i3), NBSMaskViewType.OTHERS, "");
                arrayList.add(nBSMaskViewRect);
                Logger.debug(TAG, "NBSScreenRecordTimer  getIgnoredViews  rects add  : " + nBSMaskViewRect);
            }
        }
        return arrayList;
    }

    public boolean isActivityInIgnore() {
        WeakReference<Activity> weakReferenceF = c.a().f();
        if (weakReferenceF == null || weakReferenceF.get() == null) {
            return false;
        }
        if (getAllIgnorePageName().contains(weakReferenceF.get().getClass().getName())) {
            Logger.debug(TAG, "find activity to ignore:".concat(weakReferenceF.getClass().getName()));
            return true;
        }
        Iterator<Class<?>> it = this.ignoreClasses.iterator();
        while (it.hasNext()) {
            if (it.next().isInstance(weakReferenceF.get())) {
                return true;
            }
        }
        return false;
    }

    public void maskConfigurePageName(String str) {
        if (ab.c(str)) {
            return;
        }
        try {
            JsonArray jsonArray = (JsonArray) new Gson().fromJson(str, JsonArray.class);
            this.ignoreConfigPageName.clear();
            for (JsonElement jsonElement : jsonArray) {
                Logger.debug(TAG, "ignore page name:" + jsonElement.getAsString());
                this.ignoreConfigPageName.add(jsonElement.getAsString());
            }
        } catch (Throwable th) {
            Logger.error(TAG, "error parse maskPageBlacklist", th);
        }
    }

    public void maskConfigureViewIdList(String str) {
        if (ab.c(str)) {
            return;
        }
        try {
            JsonArray jsonArray = (JsonArray) new Gson().fromJson(str, JsonArray.class);
            this.ignoreConfigViewsTags.clear();
            for (JsonElement jsonElement : jsonArray) {
                Logger.debug(TAG, "ignore view tag name:" + jsonElement.getAsString());
                this.ignoreConfigViewsTags.add(jsonElement.getAsString());
            }
        } catch (Throwable th) {
            Logger.error(TAG, "error parse maskConfigureViewIdList", th);
        }
    }

    public void maskConfiguredView(boolean z, boolean z2, boolean z3) {
        this.maskInputEnabled = z;
        this.maskTextEnabled = z2;
        this.maskImageEnabled = z3;
        StringBuilder sbM = cj.m("maskConfiguredView maskInputEnabled:", ", maskTextEnabled:", ", maskImageEnabled:", z, z2);
        sbM.append(z3);
        Logger.debug(TAG, sbM.toString());
    }

    public void maskPageByName(String str) {
        if (ab.c(str)) {
            return;
        }
        Logger.debug(TAG, "maskPageByName:" + str);
        if (this.ignorePagesName.size() < 100) {
            this.ignorePagesName.add(str);
        }
    }

    @Override // com.networkbench.agent.impl.session.screen.ScreenRecordInterface
    public void maskSensitiveRegion(View view) {
        for (WeakReference<View> weakReference : this.views) {
            if (weakReference.get() != null && weakReference.get().equals(view)) {
                Logger.warning(TAG, "NBSScreenRecordTimer  maskSensitiveRegion error ");
                return;
            }
        }
        this.views.add(new WeakReference<>(view));
        Logger.debug(TAG, "NBSScreenRecordTimer maskSensitiveRegion views : " + this.views.size());
    }

    public void maskViewByClass(Class cls) {
        if (cls == null) {
            return;
        }
        Logger.debug(TAG, "maskViewByClass className:".concat(cls.getName()));
        this.ignoreClasses.add(cls);
    }

    public void maskViewById(int i2) {
        if (i2 <= 0) {
            return;
        }
        this.ignoreViewsIds.add(Integer.valueOf(i2));
    }

    public void maskViewByTag(String str) {
        if (ab.c(str)) {
            return;
        }
        this.ignoreViewsTags.add(str);
    }

    @Override // com.networkbench.agent.impl.session.screen.ScreenRecordInterface
    public void pauseScreenRecord() {
        NBSBitmapBeansControl.getInstance().getBitmapBeans().pauseVideo();
    }

    @Override // com.networkbench.agent.impl.session.screen.ScreenRecordInterface
    public void resumeScreenRecord() {
        NBSBitmapBeansControl.getInstance().getBitmapBeans().resumeVideo();
    }

    @Override // com.networkbench.agent.impl.session.screen.ScreenRecordInterface
    public void startScreenRecord() {
        NBSBitmapBeansControl.getInstance().getBitmapBeans().startVideo();
    }

    @Override // com.networkbench.agent.impl.session.screen.ScreenRecordInterface
    public void stopScreenRecord() {
        NBSBitmapBeansControl.getInstance().getBitmapBeans().stopVideo();
    }

    public void unMaskPageByName(String str) {
        if (ab.c(str)) {
            return;
        }
        Logger.debug(TAG, "unMaskPageByName:" + str);
        this.ignorePagesName.remove(str);
    }

    @Override // com.networkbench.agent.impl.session.screen.ScreenRecordInterface
    public void unMaskSensitiveRegion(View view) {
        for (WeakReference<View> weakReference : this.views) {
            if (weakReference.get() != null && weakReference.get().equals(view)) {
                this.views.remove(weakReference);
                Logger.debug(TAG, "NBSScreenRecordTimer unMaskSensitiveRegion views : " + this.views.size());
            }
        }
    }

    public void unMaskViewByClass(Class cls) {
        if (cls == null) {
            return;
        }
        Logger.debug(TAG, "unMaskViewByClass className:".concat(cls.getName()));
        this.ignoreClasses.remove(cls);
    }

    public void unMaskViewById(int i2) {
        if (i2 <= 0) {
            return;
        }
        this.ignoreViewsIds.remove(Integer.valueOf(i2));
    }

    public void unMaskViewByTag(String str) {
        if (ab.c(str)) {
            return;
        }
        this.ignoreViewsTags.remove(str);
    }

    @Override // com.networkbench.agent.impl.session.screen.ScreenRecordInterface
    public void unmaskSensitiveRegion(float f2, float f3) {
    }

    @Override // com.networkbench.agent.impl.session.screen.ScreenRecordInterface
    public void unMaskSensitiveRegion(Rect rect) {
        this.rects.remove(rect);
    }

    @Override // com.networkbench.agent.impl.session.screen.ScreenRecordInterface
    public void maskSensitiveRegion(float f2, float f3) {
    }

    @Override // com.networkbench.agent.impl.session.screen.ScreenRecordInterface
    public void maskSensitiveRegion(Rect rect) {
        if (this.rects.contains(rect)) {
            return;
        }
        this.rects.add(rect);
        Logger.debug(TAG, "NBSScreenRecordTimer maskSensitiveRegion Rect : " + this.rects.size());
    }
}
