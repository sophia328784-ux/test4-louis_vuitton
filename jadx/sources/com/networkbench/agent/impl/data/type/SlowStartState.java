package com.networkbench.agent.impl.data.type;

/* JADX INFO: loaded from: classes2.dex */
public class SlowStartState {

    public enum CallType {
        SYNC(1),
        ASYNC(2);

        private final int id;

        CallType(int i2) {
            this.id = i2;
        }

        public int getValue() {
            return this.id;
        }
    }

    public enum LifeCycleType {
        OTHER,
        AttachBaseContext,
        AppCreate,
        ActivityCreate,
        ActivityStart,
        ActivityRestart,
        ActivityResume,
        BLANK
    }

    public enum ListenerActionType {
        View(0),
        Clicked(1),
        ItemClicked(2),
        ItemSelected(3),
        MenuItemClick(4),
        OptionsItemSelected(5),
        PageSelected(6),
        CustomAction(7),
        LongClicked(8),
        BackBtnPress(9),
        TabChanged(10);

        public final int order;

        ListenerActionType(int i2) {
            this.order = i2;
        }
    }

    public enum PageLoadingType {
        queueIdle,
        setPageLoadingEndTime,
        timeOut
    }

    public enum SegmentType {
        OTHER(0),
        NETWORK(1),
        JSON(2),
        DATABASE(3),
        BITMAP(4),
        CUSTOM(9);

        private final int id;

        SegmentType(int i2) {
            this.id = i2;
        }

        public int getValue() {
            return this.id;
        }
    }

    public enum UEType {
        eventAction(0),
        appstart(1),
        pageLoading(2);

        private final int id;

        UEType(int i2) {
            this.id = i2;
        }

        public int getValue() {
            return this.id;
        }
    }
}
