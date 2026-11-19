.class public final synthetic Lvt0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/rtccloud/sdk/util/OldLogger$Listener;


# instance fields
.field public final synthetic a:Lnet/rtccloud/sdk/Rtcc;


# direct methods
.method public synthetic constructor <init>(Lnet/rtccloud/sdk/Rtcc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvt0;->a:Lnet/rtccloud/sdk/Rtcc;

    return-void
.end method


# virtual methods
.method public final onLoggerLevelChanged(Lnet/rtccloud/sdk/util/OldLogger;I)V
    .locals 0

    iget-object p0, p0, Lvt0;->a:Lnet/rtccloud/sdk/Rtcc;

    invoke-static {p0, p1, p2}, Lnet/rtccloud/sdk/Rtcc;->c(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/util/OldLogger;I)V

    return-void
.end method
