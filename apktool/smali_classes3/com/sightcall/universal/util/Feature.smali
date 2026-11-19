.class public final enum Lcom/sightcall/universal/util/Feature;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/util/Feature$MissingFeatureFlagException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sightcall/universal/util/Feature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sightcall/universal/util/Feature;

.field public static final enum AGENT:Lcom/sightcall/universal/util/Feature;

.field public static final enum AGENT_NOTIFICATIONS:Lcom/sightcall/universal/util/Feature;

.field public static final enum CALL_OVERLAY:Lcom/sightcall/universal/util/Feature;

.field public static final enum DEEPLINK:Lcom/sightcall/universal/util/Feature;

.field public static final enum DEEPLINK_SCHEME:Lcom/sightcall/universal/util/Feature;

.field public static final enum DEEPLINK_URI:Lcom/sightcall/universal/util/Feature;

.field public static final enum FCM:Lcom/sightcall/universal/util/Feature;

.field public static final enum LOADING_ACTIVITY:Lcom/sightcall/universal/util/Feature;

.field public static final enum MEDIA_EXPORT:Lcom/sightcall/universal/util/Feature;


# instance fields
.field private final id:Ljava/lang/String;

.field private final resId:I


# direct methods
.method private static synthetic $values()[Lcom/sightcall/universal/util/Feature;
    .locals 9

    sget-object v0, Lcom/sightcall/universal/util/Feature;->DEEPLINK:Lcom/sightcall/universal/util/Feature;

    sget-object v1, Lcom/sightcall/universal/util/Feature;->DEEPLINK_SCHEME:Lcom/sightcall/universal/util/Feature;

    sget-object v2, Lcom/sightcall/universal/util/Feature;->DEEPLINK_URI:Lcom/sightcall/universal/util/Feature;

    sget-object v3, Lcom/sightcall/universal/util/Feature;->LOADING_ACTIVITY:Lcom/sightcall/universal/util/Feature;

    sget-object v4, Lcom/sightcall/universal/util/Feature;->AGENT:Lcom/sightcall/universal/util/Feature;

    sget-object v5, Lcom/sightcall/universal/util/Feature;->AGENT_NOTIFICATIONS:Lcom/sightcall/universal/util/Feature;

    sget-object v6, Lcom/sightcall/universal/util/Feature;->FCM:Lcom/sightcall/universal/util/Feature;

    sget-object v7, Lcom/sightcall/universal/util/Feature;->MEDIA_EXPORT:Lcom/sightcall/universal/util/Feature;

    sget-object v8, Lcom/sightcall/universal/util/Feature;->CALL_OVERLAY:Lcom/sightcall/universal/util/Feature;

    filled-new-array/range {v0 .. v8}, [Lcom/sightcall/universal/util/Feature;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/sightcall/universal/util/Feature;

    sget v1, Lcom/sightcall/universal/R$bool;->universal_feature_deeplink:I

    const-string v2, "universal_feature_deeplink"

    const-string v3, "DEEPLINK"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sightcall/universal/util/Feature;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sightcall/universal/util/Feature;->DEEPLINK:Lcom/sightcall/universal/util/Feature;

    new-instance v0, Lcom/sightcall/universal/util/Feature;

    sget v1, Lcom/sightcall/universal/R$bool;->universal_feature_deeplink_scheme:I

    const-string v2, "universal_feature_deeplink_scheme"

    const-string v3, "DEEPLINK_SCHEME"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sightcall/universal/util/Feature;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sightcall/universal/util/Feature;->DEEPLINK_SCHEME:Lcom/sightcall/universal/util/Feature;

    new-instance v0, Lcom/sightcall/universal/util/Feature;

    sget v1, Lcom/sightcall/universal/R$bool;->universal_feature_deeplink_uri:I

    const-string v2, "universal_feature_deeplink_uri"

    const-string v3, "DEEPLINK_URI"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sightcall/universal/util/Feature;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sightcall/universal/util/Feature;->DEEPLINK_URI:Lcom/sightcall/universal/util/Feature;

    new-instance v0, Lcom/sightcall/universal/util/Feature;

    sget v1, Lcom/sightcall/universal/R$bool;->universal_feature_loading_activity:I

    const-string v2, "universal_feature_loading_activity"

    const-string v3, "LOADING_ACTIVITY"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sightcall/universal/util/Feature;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sightcall/universal/util/Feature;->LOADING_ACTIVITY:Lcom/sightcall/universal/util/Feature;

    new-instance v0, Lcom/sightcall/universal/util/Feature;

    sget v1, Lcom/sightcall/universal/R$bool;->universal_feature_agent:I

    const-string v2, "universal_feature_agent"

    const-string v3, "AGENT"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sightcall/universal/util/Feature;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sightcall/universal/util/Feature;->AGENT:Lcom/sightcall/universal/util/Feature;

    new-instance v0, Lcom/sightcall/universal/util/Feature;

    sget v1, Lcom/sightcall/universal/R$bool;->universal_feature_agent_notifications:I

    const-string v2, "universal_feature_agent_notifications"

    const-string v3, "AGENT_NOTIFICATIONS"

    const/4 v4, 0x5

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sightcall/universal/util/Feature;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sightcall/universal/util/Feature;->AGENT_NOTIFICATIONS:Lcom/sightcall/universal/util/Feature;

    new-instance v0, Lcom/sightcall/universal/util/Feature;

    sget v1, Lcom/sightcall/universal/R$bool;->universal_feature_fcm:I

    const-string v2, "universal_feature_fcm"

    const-string v3, "FCM"

    const/4 v4, 0x6

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sightcall/universal/util/Feature;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sightcall/universal/util/Feature;->FCM:Lcom/sightcall/universal/util/Feature;

    new-instance v0, Lcom/sightcall/universal/util/Feature;

    sget v1, Lcom/sightcall/universal/R$bool;->universal_feature_media_export:I

    const-string v2, "universal_feature_media_export"

    const-string v3, "MEDIA_EXPORT"

    const/4 v4, 0x7

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sightcall/universal/util/Feature;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sightcall/universal/util/Feature;->MEDIA_EXPORT:Lcom/sightcall/universal/util/Feature;

    new-instance v0, Lcom/sightcall/universal/util/Feature;

    sget v1, Lcom/sightcall/universal/R$bool;->universal_feature_call_overlay:I

    const-string v2, "universal_feature_call_overlay"

    const-string v3, "CALL_OVERLAY"

    const/16 v4, 0x8

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sightcall/universal/util/Feature;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sightcall/universal/util/Feature;->CALL_OVERLAY:Lcom/sightcall/universal/util/Feature;

    invoke-static {}, Lcom/sightcall/universal/util/Feature;->$values()[Lcom/sightcall/universal/util/Feature;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/util/Feature;->$VALUES:[Lcom/sightcall/universal/util/Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sightcall/universal/util/Feature;->resId:I

    iput-object p4, p0, Lcom/sightcall/universal/util/Feature;->id:Ljava/lang/String;

    return-void
.end method

.method public static ensureCompatibility(Landroid/content/Context;)V
    .locals 10

    invoke-static {p0}, Lcom/sightcall/universal/util/Feature;->getRequestedPermissions(Landroid/content/Context;)Ljava/util/Set;

    sget-object v0, Lcom/sightcall/universal/util/Feature;->FCM:Lcom/sightcall/universal/util/Feature;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/util/Feature;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    sget-object v2, Lcom/sightcall/universal/util/Feature;->AGENT:Lcom/sightcall/universal/util/Feature;

    invoke-virtual {v2, p0}, Lcom/sightcall/universal/util/Feature;->isEnabled(Landroid/content/Context;)Z

    move-result v3

    sget-object v4, Lcom/sightcall/universal/util/Feature;->AGENT_NOTIFICATIONS:Lcom/sightcall/universal/util/Feature;

    invoke-virtual {v4, p0}, Lcom/sightcall/universal/util/Feature;->isEnabled(Landroid/content/Context;)Z

    move-result v5

    const-string v6, " BUT "

    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Lcom/sightcall/universal/util/Feature;->message(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/util/Feature;->message(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;)V

    :cond_0
    if-nez v3, :cond_2

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v2, p0}, Lcom/sightcall/universal/util/Feature;->message(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, p0}, Lcom/sightcall/universal/util/Feature;->message(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    sget v1, Lcom/sightcall/universal/R$string;->universal_feature_fcm_sender_id:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/util/Feature;->message(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " BUT universal_feature_fcm_sender_id and gcm_defaultSenderId are empty.\nDid you applied the google services plugin?"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_1
    return-void
.end method

.method private static getRequestedPermissions(Landroid/content/Context;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x1000

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz p0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sightcall/universal/util/Feature;
    .locals 1

    const-class v0, Lcom/sightcall/universal/util/Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/util/Feature;

    return-object p0
.end method

.method public static values()[Lcom/sightcall/universal/util/Feature;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/util/Feature;->$VALUES:[Lcom/sightcall/universal/util/Feature;

    invoke-virtual {v0}, [Lcom/sightcall/universal/util/Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sightcall/universal/util/Feature;

    return-object v0
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/util/Feature;->id:Ljava/lang/String;

    return-object p0
.end method

.method public isEnabled(Landroid/content/Context;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p0, p0, Lcom/sightcall/universal/util/Feature;->resId:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public message(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/util/Feature;->id:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/util/Feature;->isEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "enabled"

    goto :goto_0

    :cond_0
    const-string p0, "disabled"

    :goto_0
    const-string p1, "Feature ["

    const-string v1, "] is "

    invoke-static {p1, v0, v1, p0}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public require(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/util/Feature;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sightcall/universal/util/Feature$MissingFeatureFlagException;

    invoke-direct {v0, p0, p1}, Lcom/sightcall/universal/util/Feature$MissingFeatureFlagException;-><init>(Lcom/sightcall/universal/util/Feature;Landroid/content/Context;)V

    throw v0
.end method
