.class Lcom/sightcall/universal/fcm/UniversalFcm$2;
.super Lcom/sightcall/universal/util/Lazy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/fcm/UniversalFcm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sightcall/universal/util/Lazy<",
        "Lcom/sightcall/universal/preferences/StringPreference;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_TOKEN:Ljava/lang/String; = "token"

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "universal_fcm"


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/fcm/UniversalFcm;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/fcm/UniversalFcm;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/fcm/UniversalFcm$2;->this$0:Lcom/sightcall/universal/fcm/UniversalFcm;

    invoke-direct {p0}, Lcom/sightcall/universal/util/Lazy;-><init>()V

    return-void
.end method


# virtual methods
.method public init()Lcom/sightcall/universal/preferences/StringPreference;
    .locals 4

    new-instance v0, Lcom/sightcall/universal/fcm/UniversalFcm$2$1;

    iget-object v1, p0, Lcom/sightcall/universal/fcm/UniversalFcm$2;->this$0:Lcom/sightcall/universal/fcm/UniversalFcm;

    invoke-static {v1}, Lcom/sightcall/universal/fcm/UniversalFcm;->a(Lcom/sightcall/universal/fcm/UniversalFcm;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "universal_fcm"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "token"

    invoke-direct {v0, p0, v1, v2}, Lcom/sightcall/universal/fcm/UniversalFcm$2$1;-><init>(Lcom/sightcall/universal/fcm/UniversalFcm$2;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic init()Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcom/sightcall/universal/fcm/UniversalFcm$2;->init()Lcom/sightcall/universal/preferences/StringPreference;

    move-result-object p0

    return-object p0
.end method
