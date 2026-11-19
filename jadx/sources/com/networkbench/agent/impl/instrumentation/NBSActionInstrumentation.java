package com.networkbench.agent.impl.instrumentation;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.linkplay.medialib.ContentTree;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.data.a.h;
import com.networkbench.agent.impl.data.d.b;
import com.networkbench.agent.impl.data.d.d;
import com.networkbench.agent.impl.data.type.SlowStartState;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;

/* JADX INFO: loaded from: classes2.dex */
public class NBSActionInstrumentation {
    private static int COLUMN_POSITION_ID = 214748447;
    private static int ROW_POSITION_ID = 214748446;
    private static final String TAG = "NBSActionInstrumentation";
    private static boolean isPageSelectedEnterSuccess = false;

    public static String getColumn(View view) throws NullPointerException {
        if (view == null || view.getTag(COLUMN_POSITION_ID) == null) {
            return null;
        }
        return view.getTag(COLUMN_POSITION_ID).toString();
    }

    public static String getRow(View view) throws NullPointerException {
        if (view == null || view.getTag(ROW_POSITION_ID) == null) {
            return null;
        }
        return view.getTag(ROW_POSITION_ID).toString();
    }

    public static boolean isInstrumentEnabled() {
        return r.u().af();
    }

    public static void onClickEventEnter(View view) {
        try {
            h.a(SlowStartState.ListenerActionType.Clicked, view, true);
        } catch (Throwable th) {
            g.k("NBSActionInstrumentation   onClickEventEnter()  has an error : " + th);
        }
    }

    public static void onClickEventExit() {
        try {
            h.e();
        } catch (Throwable th) {
            g.k("NBSActionInstrumentation   onClickEventExit()  has an error : " + th);
        }
    }

    public static void onItemClickEnter(View view, int i2) {
        try {
            h.a(SlowStartState.ListenerActionType.ItemClicked, view, true, i2);
        } catch (Throwable th) {
            g.k("NBSActionInstrumentation   onItemClickEnter()  has an error : " + th);
        }
    }

    public static void onItemClickExit() {
        try {
            h.e();
        } catch (Throwable th) {
            g.k("NBSActionInstrumentation   onItemClickExit()  has an error : " + th);
        }
    }

    public static void onItemSelectedEnter(View view, int i2) {
        try {
            h.a(SlowStartState.ListenerActionType.ItemSelected, view, true, i2);
        } catch (Throwable th) {
            g.k("NBSActionInstrumentation   onItemSelectedEnter()  has an error : " + th);
        }
    }

    public static void onItemSelectedExit() {
        try {
            h.e();
        } catch (Throwable th) {
            g.k("NBSActionInstrumentation   onItemSelectedExit()  has an error : " + th);
        }
    }

    public static void onKeyDownAction(int i2) {
        if (i2 == 4) {
            try {
                if (r.u().ai()) {
                    b.a().a(new d(SlowStartState.ListenerActionType.BackBtnPress.name(), ContentTree.ROOT_ID, "", -1));
                }
            } catch (Throwable th) {
                g.k("NBSActionInstrumentation onKeyDownAction() has an error : " + th);
            }
        }
    }

    public static void onLongClickEventEnter(View view) {
        try {
            h.a(SlowStartState.ListenerActionType.LongClicked, view, true);
        } catch (Throwable th) {
            g.k("NBSActionInstrumentation onLongClickEventEnter()  has an error : " + th);
        }
    }

    public static void onLongClickEventExit() {
        try {
            h.e();
        } catch (Throwable th) {
            g.k("NBSActionInstrumentation   onLongClickEventExit()  has an error : " + th);
        }
    }

    public static void onMenuItemClickEnter(Object obj) {
        try {
            h.a(SlowStartState.ListenerActionType.MenuItemClick, h.a(obj), true);
        } catch (Throwable th) {
            g.k("NBSActionInstrumentation   onMenuItemClickEnter()  has an error : " + th);
        }
    }

    public static void onMenuItemClickExit() {
        try {
            h.e();
        } catch (Throwable th) {
            g.k("NBSActionInstrumentation   onMenuItemClickExit()  has an error : " + th);
        }
    }

    public static void onOptionsItemSelectedEnter(Object obj) {
        try {
            h.a(SlowStartState.ListenerActionType.OptionsItemSelected, h.a(obj), true);
        } catch (Throwable th) {
            Logger.error(TAG, "onOptionsItemSelectedEnter error", th);
        }
    }

    public static void onOptionsItemSelectedExit() {
        try {
            h.e();
        } catch (Throwable th) {
            g.k("NBSActionInstrumentation   onOptionsItemSelectedExit()  has an error : " + th);
        }
    }

    public static void onPageSelectedEnter(int i2) {
        try {
            Logger.debug(TAG, "onPageSelectedEnter paramInt:" + i2);
            com.networkbench.agent.impl.asyncaction.r rVar = h.f36801b;
            if (rVar == null || rVar.f()) {
                isPageSelectedEnterSuccess = true;
                h.a(SlowStartState.ListenerActionType.PageSelected, null, true, i2);
            } else {
                Logger.debug(TAG, "NBSEventActionManager.nbsSlowStartEngine:" + h.f36801b.hashCode());
            }
        } catch (Throwable th) {
            Logger.error(TAG, "NBSActionInstrumentation onPageSelectedEnter()  has an error : ", th);
        }
    }

    public static void onPageSelectedExit() {
        try {
            Logger.debug(TAG, "onPageSelectedExit :");
            if (isPageSelectedEnterSuccess) {
                isPageSelectedEnterSuccess = false;
                h.e();
            }
        } catch (Throwable th) {
            Logger.error(TAG, "NBSActionInstrumentation onPageSelectedExit()  has an error : ", th);
        }
    }

    public static void onTabChangedEnter(String str) {
        try {
            h.a(SlowStartState.ListenerActionType.TabChanged, str, true);
        } catch (Throwable th) {
            g.k("NBSActionInstrumentation   onClickEventEnter()  has an error : " + th);
        }
    }

    public static void onTabChangedExit() {
        try {
            h.e();
        } catch (Throwable th) {
            g.k("NBSActionInstrumentation onTabChangedExit()  has an error : " + th);
        }
    }

    public static void onTabSelectedEnter(Object obj, Object obj2) {
    }

    public static void onTabSelectedExit() {
    }

    public static void setColumnTagForList(View view, int i2) {
        try {
            if (!isInstrumentEnabled()) {
                Logger.warning(TAG, "setColumnTagForList isInstrumentEnabled false");
            }
            if (view != null) {
                view.setTag(COLUMN_POSITION_ID, Integer.valueOf(i2));
                Logger.debug(TAG, "setColumnTagForList invoked, columnPosition:" + i2);
            }
        } catch (Throwable th) {
            Logger.error(TAG, "error setColumnTagForList", th);
        }
    }

    public static void setRowTagForList(Object obj, int i2) {
        try {
            if (!isInstrumentEnabled()) {
                Logger.warning(TAG, "setRowTagForList isInstrumentEnabled false");
            }
            if (obj != null) {
                if (obj instanceof View) {
                    ((View) obj).setTag(ROW_POSITION_ID, Integer.valueOf(i2));
                } else if (ak.i("androidx.recyclerview.widget.RecyclerView") && (obj instanceof RecyclerView.ViewHolder) && ((RecyclerView.ViewHolder) obj).itemView != null) {
                    ((RecyclerView.ViewHolder) obj).itemView.setTag(ROW_POSITION_ID, Integer.valueOf(i2));
                }
            }
        } catch (Throwable th) {
            Logger.error(TAG, "error setRowTagForList", th);
        }
    }
}
