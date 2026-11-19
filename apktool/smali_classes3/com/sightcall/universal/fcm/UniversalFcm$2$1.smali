.class Lcom/sightcall/universal/fcm/UniversalFcm$2$1;
.super Lcom/sightcall/universal/preferences/StringPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/fcm/UniversalFcm$2;->init()Lcom/sightcall/universal/preferences/StringPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sightcall/universal/fcm/UniversalFcm$2;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/fcm/UniversalFcm$2;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/fcm/UniversalFcm$2$1;->this$1:Lcom/sightcall/universal/fcm/UniversalFcm$2;

    invoke-direct {p0, p2, p3}, Lcom/sightcall/universal/preferences/StringPreference;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public set(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sightcall/universal/preferences/StringPreference;->get()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1}, Lcom/sightcall/universal/preferences/StringPreference;->set(Ljava/lang/String;)V

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object p0

    new-instance v0, Lcom/sightcall/universal/fcm/FcmTokenUpdateEvent;

    invoke-direct {v0, p1}, Lcom/sightcall/universal/fcm/FcmTokenUpdateEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
