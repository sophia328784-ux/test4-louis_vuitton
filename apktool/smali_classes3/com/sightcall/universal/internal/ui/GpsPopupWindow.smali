.class public Lcom/sightcall/universal/internal/ui/GpsPopupWindow;
.super Lcom/sightcall/universal/internal/ui/RelativePopupWindow;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field private accuracyTextView:Landroid/widget/TextView;

.field private coordinatesTextView:Landroid/widget/TextView;

.field private defaultAccuracyString:Ljava/lang/String;

.field private defaultCoordinatesString:Ljava/lang/String;

.field private formatAccuracyString:Ljava/lang/String;

.field private final gps:Lcom/sightcall/universal/internal/model/GpsRequest;

.field private progressImageView:Lcom/sightcall/universal/ui/IndeterminateImageView;

.field private requestButton:Landroid/widget/Button;

.field private timestampTextView:Lcom/sightcall/universal/internal/ui/TimeAgoTextView;

.field private unknownValueString:Ljava/lang/String;

.field private userLocationString:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/sightcall/universal/internal/model/GpsRequest;)V
    .locals 1

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Lcom/sightcall/universal/internal/ui/RelativePopupWindow;-><init>(II)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->gps:Lcom/sightcall/universal/internal/model/GpsRequest;

    invoke-virtual {p0, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/internal/ui/GpsPopupWindow;)Lcom/sightcall/universal/internal/model/GpsRequest;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->gps:Lcom/sightcall/universal/internal/model/GpsRequest;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sightcall/universal/internal/ui/GpsPopupWindow;Landroid/content/Context;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->showLocation(Landroid/content/Context;Landroid/location/Location;)V

    return-void
.end method

.method private formatAccuracy(Landroid/location/Location;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->defaultAccuracyString:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-lez p1, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->formatAccuracyString:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->unknownValueString:Ljava/lang/String;

    return-object p0
.end method

.method private formatCoordinates(Landroid/location/Location;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->defaultCoordinatesString:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Lcom/sightcall/universal/util/Truss;

    invoke-direct {v0}, Lcom/sightcall/universal/util/Truss;-><init>()V

    new-instance v1, Lcom/sightcall/universal/internal/ui/GpsPopupWindow$2;

    invoke-direct {v1, p0, p1}, Lcom/sightcall/universal/internal/ui/GpsPopupWindow$2;-><init>(Lcom/sightcall/universal/internal/ui/GpsPopupWindow;Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/util/Truss;->pushSpan(Ljava/lang/Object;)Lcom/sightcall/universal/util/Truss;

    move-result-object p0

    invoke-static {p1}, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->locationToDegreesMinutesSeconds(Landroid/location/Location;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/util/Truss;->append(Ljava/lang/String;)Lcom/sightcall/universal/util/Truss;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/universal/util/Truss;->popSpan()Lcom/sightcall/universal/util/Truss;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/universal/util/Truss;->build()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static geoScheme(Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "geo:0,0?q="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static httpsScheme(Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://maps.google.com/?q="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static locationToDegreesMinutesSeconds(Landroid/location/Location;)Ljava/lang/String;
    .locals 15

    const-string v0, "\""

    const-string v1, "\'"

    const-string v2, "\u00b0"

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    const-wide v7, 0x40ac200000000000L    # 3600.0

    mul-double v9, v3, v7

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int p0, v9

    div-int/lit16 v9, p0, 0xe10

    rem-int/lit16 p0, p0, 0xe10

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    div-int/lit8 v10, p0, 0x3c

    rem-int/lit8 p0, p0, 0x3c

    mul-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v7, v7

    div-int/lit16 v8, v7, 0xe10

    rem-int/lit16 v7, v7, 0xe10

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    div-int/lit8 v11, v7, 0x3c

    rem-int/lit8 v7, v7, 0x3c

    if-ltz v9, :cond_0

    const-string v12, "N"

    goto :goto_0

    :cond_0
    const-string v12, "S"

    :goto_0
    if-ltz v8, :cond_1

    const-string v13, "E"

    goto :goto_1

    :cond_1
    const-string v13, "W"

    :goto_1
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  "

    invoke-virtual {v14, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%8.5f %8.5f"

    invoke-static {p0, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private prepareUi()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Lcom/sightcall/universal/R$id;->universal_gps_request:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->requestButton:Landroid/widget/Button;

    sget v1, Lcom/sightcall/universal/R$id;->universal_gps_coordinates:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->coordinatesTextView:Landroid/widget/TextView;

    sget v1, Lcom/sightcall/universal/R$id;->universal_gps_accuracy:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->accuracyTextView:Landroid/widget/TextView;

    sget v1, Lcom/sightcall/universal/R$id;->universal_gps_timestamp:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sightcall/universal/internal/ui/TimeAgoTextView;

    iput-object v1, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->timestampTextView:Lcom/sightcall/universal/internal/ui/TimeAgoTextView;

    sget v1, Lcom/sightcall/universal/R$id;->universal_gps_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sightcall/universal/ui/IndeterminateImageView;

    iput-object v1, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->progressImageView:Lcom/sightcall/universal/ui/IndeterminateImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sightcall/universal/R$string;->universal_location_popup_coordinates:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->defaultCoordinatesString:Ljava/lang/String;

    sget v1, Lcom/sightcall/universal/R$string;->universal_location_popup_accuracy:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->defaultAccuracyString:Ljava/lang/String;

    sget v1, Lcom/sightcall/universal/R$string;->universal_location_popup_accuracy_format:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->formatAccuracyString:Ljava/lang/String;

    sget v1, Lcom/sightcall/universal/R$string;->universal_location_popup_unknown_value:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->unknownValueString:Ljava/lang/String;

    sget v1, Lcom/sightcall/universal/R$string;->universal_location_maps_marker:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->userLocationString:Ljava/lang/String;

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->requestButton:Landroid/widget/Button;

    new-instance v2, Lcom/sightcall/universal/internal/ui/GpsPopupWindow$1;

    invoke-direct {v2, p0}, Lcom/sightcall/universal/internal/ui/GpsPopupWindow$1;-><init>(Lcom/sightcall/universal/internal/ui/GpsPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->coordinatesTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->timestampTextView:Lcom/sightcall/universal/internal/ui/TimeAgoTextView;

    sget v2, Lcom/sightcall/universal/R$string;->universal_location_popup_timestamp:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sightcall/universal/internal/ui/TimeAgoTextView;->setDefaultText(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->updateUi()V

    return-void
.end method

.method public static show(Landroid/app/Activity;Lcom/sightcall/universal/model/Session;Landroid/view/View;)V
    .locals 4

    iget-object p1, p1, Lcom/sightcall/universal/model/Session;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/model/RemoteState;->gpsRequest()Lcom/sightcall/universal/internal/model/GpsRequest;

    move-result-object p1

    new-instance v0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;

    invoke-direct {v0, p1}, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;-><init>(Lcom/sightcall/universal/internal/model/GpsRequest;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v1, Lcom/sightcall/universal/R$layout;->universal_popup_window_gps:I

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-direct {v0}, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->prepareUi()V

    const/4 p0, 0x2

    invoke-virtual {v0, p2, p0, v2, p1}, Lcom/sightcall/universal/internal/ui/RelativePopupWindow;->showOnAnchor(Landroid/view/View;IIZ)V

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object p0

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private showLocation(Landroid/content/Context;Landroid/location/Location;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->userLocationString:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->geoScheme(Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "com.google.android.apps.maps"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->userLocationString:Ljava/lang/String;

    invoke-static {p2, p0}, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->httpsScheme(Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v3, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/sightcall/universal/util/Utils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)Z

    sget p0, Lcom/sightcall/universal/R$string;->universal_messages_copied_to_clipboard:I

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private updateUi()V
    .locals 6

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->gps:Lcom/sightcall/universal/internal/model/GpsRequest;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/model/GpsRequest;->isRequesting()Z

    move-result v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->gps:Lcom/sightcall/universal/internal/model/GpsRequest;

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/model/GpsRequest;->location()Landroid/location/Location;

    move-result-object v1

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->requestButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->requestButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->gps:Lcom/sightcall/universal/internal/model/GpsRequest;

    invoke-virtual {v3}, Lcom/sightcall/universal/internal/model/GpsRequest;->isInitialRequest()Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lcom/sightcall/universal/R$string;->universal_location_popup_request_initial:I

    goto :goto_0

    :cond_0
    sget v3, Lcom/sightcall/universal/R$string;->universal_location_popup_request_following:I

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->progressImageView:Lcom/sightcall/universal/ui/IndeterminateImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/sightcall/universal/ui/IndeterminateImageView;->show()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/sightcall/universal/ui/IndeterminateImageView;->hide(Z)V

    :goto_1
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->coordinatesTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->formatCoordinates(Landroid/location/Location;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->accuracyTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->formatAccuracy(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->timestampTextView:Lcom/sightcall/universal/internal/ui/TimeAgoTextView;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    goto :goto_2

    :cond_2
    move-wide v4, v2

    :goto_2
    invoke-virtual {v0, v4, v5}, Lcom/sightcall/universal/internal/ui/TimeAgoTextView;->setTimestamp(J)V

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/4 v4, 0x0

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->accuracyTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->unknownValueString:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->timestampTextView:Lcom/sightcall/universal/internal/ui/TimeAgoTextView;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->unknownValueString:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onRemoteStateGpsEvent(Lcom/sightcall/universal/internal/model/GpsRequest$Event;)V
    .locals 0
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/GpsPopupWindow;->updateUi()V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->update()V

    return-void
.end method
