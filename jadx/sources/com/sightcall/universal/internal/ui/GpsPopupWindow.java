package com.sightcall.universal.internal.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.location.Location;
import android.net.Uri;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.widget.Toast;
import com.dynatrace.android.callback.Callback;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sightcall.common.DataChannelAction;
import com.sightcall.gpslocation.rtcc.model.GeoLocationRequest;
import com.sightcall.pratik.extensions.AnyExtensionsKt;
import com.sightcall.universal.R;
import com.sightcall.universal.internal.model.GpsRequest;
import com.sightcall.universal.model.Session;
import com.sightcall.universal.ui.IndeterminateImageView;
import com.sightcall.universal.util.Truss;
import com.sightcall.universal.util.Utils;
import java.util.Locale;
import java.util.UUID;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.event.Event;

/* JADX INFO: loaded from: classes3.dex */
public class GpsPopupWindow extends RelativePopupWindow implements PopupWindow.OnDismissListener {
    private TextView accuracyTextView;
    private TextView coordinatesTextView;
    private String defaultAccuracyString;
    private String defaultCoordinatesString;
    private String formatAccuracyString;
    private final GpsRequest gps;
    private IndeterminateImageView progressImageView;
    private Button requestButton;
    private TimeAgoTextView timestampTextView;
    private String unknownValueString;
    private String userLocationString;

    private GpsPopupWindow(GpsRequest gpsRequest) {
        super(-2, -2);
        this.gps = gpsRequest;
        setOnDismissListener(this);
    }

    private String formatAccuracy(Location location) {
        if (location == null) {
            return this.defaultAccuracyString;
        }
        int iRound = Math.round(location.getAccuracy());
        return iRound > 0 ? String.format(Locale.getDefault(), this.formatAccuracyString, Integer.valueOf(iRound)) : this.unknownValueString;
    }

    private CharSequence formatCoordinates(final Location location) {
        return location == null ? this.defaultCoordinatesString : new Truss().pushSpan(new ClickableSpan() { // from class: com.sightcall.universal.internal.ui.GpsPopupWindow.2
            @Override // android.text.style.ClickableSpan
            public void onClick(View view) {
                GpsPopupWindow.this.showLocation(view.getContext(), location);
                SensorsDataAutoTrackHelper.trackViewOnClick(view);
            }
        }).append(locationToDegreesMinutesSeconds(location)).popSpan().build();
    }

    private static String geoScheme(Location location, String str) {
        String str2;
        StringBuilder sb = new StringBuilder("geo:0,0?q=");
        sb.append(location.getLatitude());
        sb.append(",");
        sb.append(location.getLongitude());
        if (TextUtils.isEmpty(str)) {
            str2 = "";
        } else {
            str2 = "(" + Uri.encode(str) + ")";
        }
        sb.append(str2);
        return sb.toString();
    }

    private static String httpsScheme(Location location, String str) {
        String str2;
        StringBuilder sb = new StringBuilder("https://maps.google.com/?q=");
        sb.append(location.getLatitude());
        sb.append(",");
        sb.append(location.getLongitude());
        if (TextUtils.isEmpty(str)) {
            str2 = "";
        } else {
            str2 = "(" + Uri.encode(str) + ")";
        }
        sb.append(str2);
        return sb.toString();
    }

    private static String locationToDegreesMinutesSeconds(Location location) {
        double latitude = location.getLatitude();
        double longitude = location.getLongitude();
        try {
            int iRound = (int) Math.round(latitude * 3600.0d);
            int i2 = iRound / 3600;
            int iAbs = Math.abs(iRound % 3600);
            int i3 = iAbs / 60;
            int i4 = iAbs % 60;
            int iRound2 = (int) Math.round(3600.0d * longitude);
            int i5 = iRound2 / 3600;
            int iAbs2 = Math.abs(iRound2 % 3600);
            int i6 = iAbs2 / 60;
            int i7 = iAbs2 % 60;
            String str = i2 >= 0 ? "N" : "S";
            String str2 = i5 >= 0 ? "E" : "W";
            Locale locale = Locale.US;
            return Math.abs(i2) + "°" + i3 + "'" + i4 + "\"" + str + "  " + Math.abs(i5) + "°" + i6 + "'" + i7 + "\"" + str2;
        } catch (Exception unused) {
            return String.format(Locale.US, "%8.5f %8.5f", Double.valueOf(latitude), Double.valueOf(longitude));
        }
    }

    private void prepareUi() {
        View contentView = getContentView();
        if (contentView == null) {
            return;
        }
        this.requestButton = (Button) contentView.findViewById(R.id.universal_gps_request);
        this.coordinatesTextView = (TextView) contentView.findViewById(R.id.universal_gps_coordinates);
        this.accuracyTextView = (TextView) contentView.findViewById(R.id.universal_gps_accuracy);
        this.timestampTextView = (TimeAgoTextView) contentView.findViewById(R.id.universal_gps_timestamp);
        this.progressImageView = (IndeterminateImageView) contentView.findViewById(R.id.universal_gps_progress);
        Resources resources = contentView.getContext().getResources();
        this.defaultCoordinatesString = resources.getString(R.string.universal_location_popup_coordinates);
        this.defaultAccuracyString = resources.getString(R.string.universal_location_popup_accuracy);
        this.formatAccuracyString = resources.getString(R.string.universal_location_popup_accuracy_format);
        this.unknownValueString = resources.getString(R.string.universal_location_popup_unknown_value);
        this.userLocationString = resources.getString(R.string.universal_location_maps_marker);
        this.requestButton.setOnClickListener(new View.OnClickListener() { // from class: com.sightcall.universal.internal.ui.GpsPopupWindow.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Callback.n(view);
                try {
                    if (GpsPopupWindow.this.gps.isRequesting()) {
                        DataChannelAction.STOP_LOCATION.send();
                    }
                    DataChannelAction.REQUEST_GEOLOCATION.send(AnyExtensionsKt.toJson(new GeoLocationRequest(UUID.randomUUID().toString(), 60000L), false, false));
                    GpsPopupWindow.this.gps.onStart();
                } finally {
                    Callback.o();
                    SensorsDataAutoTrackHelper.trackViewOnClick(view);
                }
            }
        });
        this.coordinatesTextView.setMovementMethod(LinkMovementMethod.getInstance());
        this.timestampTextView.setDefaultText(resources.getString(R.string.universal_location_popup_timestamp));
        updateUi();
    }

    public static void show(Activity activity, Session session, View view) {
        GpsPopupWindow gpsPopupWindow = new GpsPopupWindow(session.remoteState.gpsRequest());
        gpsPopupWindow.setOutsideTouchable(true);
        gpsPopupWindow.setFocusable(true);
        gpsPopupWindow.setBackgroundDrawable(new ColorDrawable(0));
        gpsPopupWindow.setContentView(LayoutInflater.from(activity).inflate(R.layout.universal_popup_window_gps, (ViewGroup) null));
        gpsPopupWindow.prepareUi();
        gpsPopupWindow.showOnAnchor(view, 2, 0, true);
        Rtcc.instance().bus().register(gpsPopupWindow);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showLocation(Context context, Location location) {
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(geoScheme(location, this.userLocationString)));
        intent.setPackage("com.google.android.apps.maps");
        if (intent.resolveActivity(packageManager) != null) {
            context.startActivity(intent);
            return;
        }
        Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(httpsScheme(location, this.userLocationString)));
        if (intent2.resolveActivity(packageManager) != null) {
            context.startActivity(intent2);
            return;
        }
        Utils.copyToClipboard(context.getApplicationContext(), location.getLatitude() + "," + location.getLongitude());
        Toast.makeText(context, R.string.universal_messages_copied_to_clipboard, 0).show();
    }

    private void updateUi() {
        boolean zIsRequesting = this.gps.isRequesting();
        Location location = this.gps.location();
        this.requestButton.setEnabled(true);
        this.requestButton.setText(this.gps.isInitialRequest() ? R.string.universal_location_popup_request_initial : R.string.universal_location_popup_request_following);
        IndeterminateImageView indeterminateImageView = this.progressImageView;
        if (zIsRequesting) {
            indeterminateImageView.show();
        } else {
            indeterminateImageView.hide(false);
        }
        this.coordinatesTextView.setText(formatCoordinates(location));
        this.accuracyTextView.setText(formatAccuracy(location));
        this.timestampTextView.setTimestamp(location != null ? location.getTime() : 0L);
        if (location != null) {
            if (location.getAccuracy() <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                this.accuracyTextView.setText(this.unknownValueString);
            }
            if (location.getTime() <= 0) {
                this.timestampTextView.setText(this.unknownValueString);
            }
        }
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        Rtcc.instance().bus().unregister(this);
    }

    @Event
    public void onRemoteStateGpsEvent(GpsRequest.Event event) {
        updateUi();
        update();
    }
}
