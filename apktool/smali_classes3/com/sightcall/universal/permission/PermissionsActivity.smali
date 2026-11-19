.class public Lcom/sightcall/universal/permission/PermissionsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/permission/PermissionsActivity$PermissionsResultReceiver;
    }
.end annotation


# static fields
.field public static final EXTRA_NEVER_ASK_AGAIN:Ljava/lang/String; = "never_ask_again"

.field public static final EXTRA_PERMISSIONS:Ljava/lang/String; = "permissions"

.field public static final EXTRA_RESULTS:Ljava/lang/String; = "results"

.field private static final EXTRA_RESULT_RECEIVER:Ljava/lang/String; = "result_receiver"

.field public static final EXTRA_SHOULD_SHOW_RATIONALES:Ljava/lang/String; = "results_should_show_rationale"

.field public static final FROM:Ljava/lang/String; = "from"

.field public static final REQUEST_CODE:I = 0x1


# instance fields
.field private permissions:[Ljava/lang/String;

.field private resultReceiver:Landroid/os/ResultReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private static requestCorrespondsToResult([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs start(Landroid/content/Context;Lcom/sightcall/universal/permission/PermissionsActivity$PermissionsResultReceiver;[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sightcall/universal/permission/PermissionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "permissions"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "result_receiver"

    invoke-static {p1}, Lcom/sightcall/universal/permission/PermissionsActivity;->wrapResultReceiver(Lcom/sightcall/universal/permission/PermissionsActivity$PermissionsResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static varargs startFromOffline(Landroid/content/Context;Lcom/sightcall/universal/permission/PermissionsActivity$PermissionsResultReceiver;[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sightcall/universal/permission/PermissionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "from"

    invoke-virtual {v0, v1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "permissions"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "result_receiver"

    invoke-static {p1}, Lcom/sightcall/universal/permission/PermissionsActivity;->wrapResultReceiver(Lcom/sightcall/universal/permission/PermissionsActivity$PermissionsResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static wrapResultReceiver(Lcom/sightcall/universal/permission/PermissionsActivity$PermissionsResultReceiver;)Landroid/os/ResultReceiver;
    .locals 2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object p0, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/ResultReceiver;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const-string v1, "permissions"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sightcall/universal/permission/PermissionsActivity;->permissions:[Ljava/lang/String;

    if-eqz v1, :cond_5

    array-length v1, v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "result_receiver"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    iput-object v1, p0, Lcom/sightcall/universal/permission/PermissionsActivity;->resultReceiver:Landroid/os/ResultReceiver;

    if-nez p1, :cond_4

    const-string p1, "from"

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sightcall/universal/permission/Permissions;->getPermissionList(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sightcall/universal/permission/PermissionsActivity;->permissions:[Ljava/lang/String;

    :goto_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_4
    return-void

    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    iget-object p1, p0, Lcom/sightcall/universal/permission/PermissionsActivity;->permissions:[Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/sightcall/universal/permission/PermissionsActivity;->requestCorrespondsToResult([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    array-length p1, p2

    new-array v0, p1, [Z

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_1

    aget-object v3, p2, v2

    invoke-static {p0, v3}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    aput-boolean v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p3}, Lcom/sightcall/universal/permission/Permissions;->hasGrantedPermissions([I)Z

    move-result p1

    xor-int/lit8 v2, p1, 0x1

    if-nez p1, :cond_4

    array-length v3, p2

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_4

    aget-object v5, p2, v4

    invoke-static {p0, v5}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    move v6, v1

    :goto_2
    invoke-static {p0, v5}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v5

    if-nez v6, :cond_3

    if-eqz v5, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/sightcall/universal/permission/PermissionsActivity;->resultReceiver:Landroid/os/ResultReceiver;

    if-eqz v3, :cond_6

    new-instance v3, Landroid/os/Bundle;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(I)V

    const-string v4, "permissions"

    invoke-virtual {v3, v4, p2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v4, "results"

    invoke-virtual {v3, v4, p3}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v4, "results_should_show_rationale"

    invoke-virtual {v3, v4, v0}, Landroid/os/BaseBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    const-string v4, "never_ask_again"

    invoke-virtual {v3, v4, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/sightcall/universal/permission/PermissionsActivity;->resultReceiver:Landroid/os/ResultReceiver;

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, -0x1

    :goto_4
    invoke-virtual {v4, v1, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_6
    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object p1

    new-instance v1, Lcom/sightcall/universal/permission/PermissionsEvent;

    invoke-direct {v1, p2, p3, v0, v2}, Lcom/sightcall/universal/permission/PermissionsEvent;-><init>([Ljava/lang/String;[I[ZZ)V

    invoke-virtual {p1, v1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onScenarioStatusEvent(Lcom/sightcall/universal/scenario/Scenario$StatusEvent;)V
    .locals 1
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    sget-object v0, Lcom/sightcall/universal/permission/PermissionsActivity$1;->$SwitchMap$com$sightcall$universal$scenario$Scenario$Status:[I

    invoke-virtual {p1}, Lcom/sightcall/universal/scenario/Scenario$StatusEvent;->status()Lcom/sightcall/universal/scenario/Scenario$Status;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    invoke-static {p0}, Lcom/sightcall/universal/Universal;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-static {p0}, Lcom/sightcall/universal/Universal;->unregister(Ljava/lang/Object;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method
