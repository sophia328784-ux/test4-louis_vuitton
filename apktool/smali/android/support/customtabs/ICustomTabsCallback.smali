.class public interface abstract Landroid/support/customtabs/ICustomTabsCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/customtabs/ICustomTabsCallback$Stub;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$support$customtabs$ICustomTabsCallback"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/customtabs/ICustomTabsCallback;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract N0()V
.end method

.method public abstract Q()Landroid/os/Bundle;
.end method

.method public abstract d()I
.end method

.method public abstract d0()V
.end method

.method public abstract d1()V
.end method

.method public abstract h1()V
.end method

.method public abstract m2()V
.end method

.method public abstract n0()V
.end method

.method public abstract s1()V
.end method

.method public abstract t0()V
.end method

.method public abstract v1()V
.end method

.method public abstract w0()V
.end method
