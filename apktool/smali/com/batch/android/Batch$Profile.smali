.class public final Lcom/batch/android/Batch$Profile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/Batch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Profile"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static editor()Lcom/batch/android/BatchProfileAttributeEditor;
    .locals 1

    new-instance v0, Lcom/batch/android/BatchProfileAttributeEditor;

    invoke-direct {v0}, Lcom/batch/android/BatchProfileAttributeEditor;-><init>()V

    return-object v0
.end method

.method public static identify(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/batch/android/n/x;->a()Lcom/batch/android/v0/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/v0/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/batch/android/n/x;->a()Lcom/batch/android/v0/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/batch/android/v0/i;->a(Ljava/lang/String;Lcom/batch/android/BatchEventAttributes;)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Lcom/batch/android/BatchEventAttributes;)V
    .locals 1

    .line 9
    invoke-static {}, Lcom/batch/android/n/x;->a()Lcom/batch/android/v0/i;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/batch/android/v0/i;->a(Ljava/lang/String;Lcom/batch/android/BatchEventAttributes;)V

    return-void
.end method

.method public static trackLocation(Landroid/location/Location;)V
    .locals 1

    invoke-static {}, Lcom/batch/android/n/f0;->a()Lcom/batch/android/v0/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/batch/android/v0/l;->a(Landroid/location/Location;)V

    return-void
.end method
