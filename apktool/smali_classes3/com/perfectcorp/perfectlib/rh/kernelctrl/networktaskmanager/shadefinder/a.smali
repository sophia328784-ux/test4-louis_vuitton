.class public final Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a;
.super Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/GsonBaseResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a$a;
    }
.end annotation


# instance fields
.field private final info:Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/GsonBaseResponse;-><init>()V

    sget-object v0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a$a;->a:Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a$a;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a;->info:Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a$a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a$a;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a;->info:Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a$a;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a$a;->a:Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/shadefinder/a$a;

    return-object p0
.end method
