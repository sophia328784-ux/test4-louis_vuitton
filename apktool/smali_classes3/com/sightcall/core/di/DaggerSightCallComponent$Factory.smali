.class final Lcom/sightcall/core/di/DaggerSightCallComponent$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/core/di/SightCallComponent$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/core/di/DaggerSightCallComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/core/di/DaggerSightCallComponent$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/app/Application;)Lcom/sightcall/core/di/SightCallComponent;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/core/di/DaggerSightCallComponent$SightCallComponentImpl;

    new-instance v0, Lcom/sightcall/core/di/CoreModule;

    invoke-direct {v0}, Lcom/sightcall/core/di/CoreModule;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/sightcall/core/di/DaggerSightCallComponent$SightCallComponentImpl;-><init>(Lcom/sightcall/core/di/CoreModule;Landroid/app/Application;)V

    return-object p0
.end method
