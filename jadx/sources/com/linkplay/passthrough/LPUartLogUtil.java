package com.linkplay.passthrough;

/* JADX INFO: loaded from: classes2.dex */
public class LPUartLogUtil {
    public static final String UART_LOG_TAG = "UartPresenter";
    public static ILPUartLogCallback mCallback;

    public static void init(ILPUartLogCallback iLPUartLogCallback) {
        mCallback = iLPUartLogCallback;
    }

    public static void log(String str, String str2, String str3) {
        String str4 = str2 + " " + str3;
        str.getClass();
        if (str.equals("e")) {
            ILPUartLogCallback iLPUartLogCallback = mCallback;
            if (iLPUartLogCallback != null) {
                iLPUartLogCallback.uart_log_e(UART_LOG_TAG, str4);
                return;
            }
            return;
        }
        if (str.equals("i")) {
            ILPUartLogCallback iLPUartLogCallback2 = mCallback;
            if (iLPUartLogCallback2 != null) {
                iLPUartLogCallback2.uart_log_i(UART_LOG_TAG, str4);
                return;
            }
            return;
        }
        ILPUartLogCallback iLPUartLogCallback3 = mCallback;
        if (iLPUartLogCallback3 != null) {
            iLPUartLogCallback3.uart_log_i(UART_LOG_TAG, str4);
        }
    }
}
