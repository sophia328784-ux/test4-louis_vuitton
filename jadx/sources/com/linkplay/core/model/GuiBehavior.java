package com.linkplay.core.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class GuiBehavior implements Serializable {
    private EnabledBean loop;
    private EnabledBean next;
    private EnabledBean pause;
    private EnabledBean prev;
    private EnabledBean queue;
    private EnabledBean seek;

    public static class EnabledBean implements Serializable {
        private boolean enabled;
        private String message;
        private Integer value;

        public boolean getEnabled() {
            return this.enabled;
        }

        public String getMessage() {
            return this.message;
        }

        public Integer getValue() {
            return this.value;
        }

        public void setEnabled(boolean z) {
            this.enabled = z;
        }

        public void setMessage(String str) {
            this.message = str;
        }

        public void setValue(Integer num) {
            this.value = num;
        }
    }

    public boolean byBehavior() {
        return (this.pause == null && this.prev == null && this.next == null && this.seek == null && this.loop == null && this.queue == null) ? false : true;
    }

    public EnabledBean getLoop() {
        return this.loop;
    }

    public EnabledBean getNext() {
        return this.next;
    }

    public EnabledBean getPause() {
        return this.pause;
    }

    public EnabledBean getPrev() {
        return this.prev;
    }

    public EnabledBean getQueue() {
        return this.queue;
    }

    public EnabledBean getSeek() {
        return this.seek;
    }

    public void setLoop(EnabledBean enabledBean) {
        this.loop = enabledBean;
    }

    public void setNext(EnabledBean enabledBean) {
        this.next = enabledBean;
    }

    public void setPause(EnabledBean enabledBean) {
        this.pause = enabledBean;
    }

    public void setPrev(EnabledBean enabledBean) {
        this.prev = enabledBean;
    }

    public void setQueue(EnabledBean enabledBean) {
        this.queue = enabledBean;
    }

    public void setSeek(EnabledBean enabledBean) {
        this.seek = enabledBean;
    }
}
