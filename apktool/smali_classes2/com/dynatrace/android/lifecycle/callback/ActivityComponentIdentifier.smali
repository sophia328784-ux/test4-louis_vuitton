.class public Lcom/dynatrace/android/lifecycle/callback/ActivityComponentIdentifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;
    .locals 1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    new-instance v0, Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-direct {v0, p0, p1}, Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
