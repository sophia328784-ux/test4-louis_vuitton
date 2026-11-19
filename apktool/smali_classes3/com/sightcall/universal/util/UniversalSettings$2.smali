.class Lcom/sightcall/universal/util/UniversalSettings$2;
.super Lcom/sightcall/universal/util/LazyIntegerPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/util/UniversalSettings;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/util/UniversalSettings;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/util/UniversalSettings;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/util/UniversalSettings$2;->this$0:Lcom/sightcall/universal/util/UniversalSettings;

    invoke-direct {p0, p2, p3, p4}, Lcom/sightcall/universal/util/LazyIntegerPreference;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public set(Ljava/lang/Integer;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sightcall/universal/util/LazyPreference;->set(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_5

    const/4 p1, 0x3

    if-eq p0, p1, :cond_4

    const/4 p1, 0x4

    if-eq p0, p1, :cond_3

    const/4 p1, 0x5

    if-eq p0, p1, :cond_2

    const/4 p1, 0x6

    if-eq p0, p1, :cond_1

    invoke-static {}, Lnet/rtccloud/sdk/util/OldLogger;->warn()V

    return-void

    :cond_1
    invoke-static {}, Lnet/rtccloud/sdk/util/OldLogger;->error()V

    return-void

    :cond_2
    invoke-static {}, Lnet/rtccloud/sdk/util/OldLogger;->warn()V

    return-void

    :cond_3
    invoke-static {}, Lnet/rtccloud/sdk/util/OldLogger;->info()V

    return-void

    :cond_4
    invoke-static {}, Lnet/rtccloud/sdk/util/OldLogger;->debug()V

    return-void

    :cond_5
    invoke-static {}, Lnet/rtccloud/sdk/util/OldLogger;->verbose()V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/util/UniversalSettings$2;->set(Ljava/lang/Integer;)V

    return-void
.end method
