.class final Lcom/sightcall/universal/internal/ui/CallViewModel$startLocationService$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/ui/CallViewModel$startLocationService$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/sightcall/universal/internal/ui/CallViewModel;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/ui/CallViewModel;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/CallViewModel$startLocationService$1$1;->this$0:Lcom/sightcall/universal/internal/ui/CallViewModel;

    iput-object p2, p0, Lcom/sightcall/universal/internal/ui/CallViewModel$startLocationService$1$1;->$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/sightcall/pratik/Result;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/pratik/Result<",
            "Landroid/location/Location;",
            "Ljava/lang/Exception;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of p2, p1, Lcom/sightcall/pratik/Result$Error;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/sightcall/pratik/Result$Error;

    invoke-virtual {p1}, Lcom/sightcall/pratik/Result$Error;->getError()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Exception;

    instance-of v0, p2, Lcom/google/android/gms/common/api/ResolvableApiException;

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/sightcall/universal/internal/ui/CallViewModel$startLocationService$1$1;->this$0:Lcom/sightcall/universal/internal/ui/CallViewModel;

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel$startLocationService$1$1;->$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/sightcall/universal/internal/ui/CallActivity;

    invoke-virtual {p1}, Lcom/sightcall/pratik/Result$Error;->getError()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/android/gms/common/api/ResolvableApiException;

    invoke-static {p2, v0, p1}, Lcom/sightcall/universal/internal/ui/CallViewModel;->access$handleResolvableApiException(Lcom/sightcall/universal/internal/ui/CallViewModel;Lcom/sightcall/universal/internal/ui/CallActivity;Lcom/google/android/gms/common/api/ResolvableApiException;)V

    sget-object p1, Lcom/sightcall/common/DataChannelAction;->GEOLOCATION_RESPONSE:Lcom/sightcall/common/DataChannelAction;

    sget-object p2, Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupDisplayed;->INSTANCE:Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupDisplayed;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel$startLocationService$1$1;->this$0:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getDataInBandRequestId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/sightcall/gpslocation/rtcc/GeolocationResponseMapperKt;->locationResponseStatus(Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sightcall/common/DataChannelAction;->send([Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    instance-of p2, p2, Lcom/sightcall/gpslocation/NoProviderFoundException;

    if-eqz p2, :cond_1

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sightcall/universal/internal/ui/CallViewModel$startLocationService$1$1;->$activity:Landroid/app/Activity;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lcom/sightcall/universal/internal/ui/CallActivity;

    iget-object p2, p2, Lcom/sightcall/universal/internal/ui/CallActivity;->locationSettingsLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V

    sget-object p1, Lcom/sightcall/common/DataChannelAction;->GEOLOCATION_RESPONSE:Lcom/sightcall/common/DataChannelAction;

    sget-object p2, Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupDisplayed;->INSTANCE:Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupDisplayed;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel$startLocationService$1$1;->this$0:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->getDataInBandRequestId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/sightcall/gpslocation/rtcc/GeolocationResponseMapperKt;->locationResponseStatus(Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sightcall/common/DataChannelAction;->send([Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-virtual {p1}, Lcom/sightcall/pratik/Result$Error;->getError()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    goto :goto_0

    :cond_2
    instance-of p2, p1, Lcom/sightcall/pratik/Result$Success;

    if-eqz p2, :cond_3

    sget-object p2, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    check-cast p1, Lcom/sightcall/pratik/Result$Success;

    invoke-virtual {p1}, Lcom/sightcall/pratik/Result$Success;->getSuccess()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p2}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    iget-object p2, p0, Lcom/sightcall/universal/internal/ui/CallViewModel$startLocationService$1$1;->this$0:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p1}, Lcom/sightcall/pratik/Result$Success;->getSuccess()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-static {p2, v0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->access$sendLocationToRemote(Lcom/sightcall/universal/internal/ui/CallViewModel;Landroid/location/Location;)V

    iget-object p2, p0, Lcom/sightcall/universal/internal/ui/CallViewModel$startLocationService$1$1;->this$0:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-virtual {p1}, Lcom/sightcall/pratik/Result$Success;->getSuccess()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    invoke-static {p2, p1}, Lcom/sightcall/universal/internal/ui/CallViewModel;->access$keepBestAccuracyLocation(Lcom/sightcall/universal/internal/ui/CallViewModel;Landroid/location/Location;)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/ui/CallViewModel$startLocationService$1$1;->this$0:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-static {p1}, Lcom/sightcall/universal/internal/ui/CallViewModel;->access$getTimer$p(Lcom/sightcall/universal/internal/ui/CallViewModel;)Ljava/util/Timer;

    move-result-object p1

    iget-object p2, p0, Lcom/sightcall/universal/internal/ui/CallViewModel$startLocationService$1$1;->this$0:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-static {p2}, Lcom/sightcall/universal/internal/ui/CallViewModel;->access$getLocationServiceDuration$p(Lcom/sightcall/universal/internal/ui/CallViewModel;)J

    move-result-wide v0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel$startLocationService$1$1;->this$0:Lcom/sightcall/universal/internal/ui/CallViewModel;

    new-instance p2, Lcom/sightcall/universal/internal/ui/CallViewModel$startLocationService$1$1$emit$$inlined$schedule$1;

    invoke-direct {p2, p0}, Lcom/sightcall/universal/internal/ui/CallViewModel$startLocationService$1$1$emit$$inlined$schedule$1;-><init>(Lcom/sightcall/universal/internal/ui/CallViewModel;)V

    invoke-virtual {p1, p2, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_3
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 187
    check-cast p1, Lcom/sightcall/pratik/Result;

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/universal/internal/ui/CallViewModel$startLocationService$1$1;->emit(Lcom/sightcall/pratik/Result;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
