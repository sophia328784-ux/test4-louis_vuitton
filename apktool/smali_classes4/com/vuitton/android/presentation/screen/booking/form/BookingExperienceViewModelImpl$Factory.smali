.class public interface abstract Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/assisted/AssistedFactory;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008g\u0018\u00002\u00020\u0001\u00a8\u0006\u0002\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$Factory;",
        "",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic a(Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$Factory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;
    .locals 2

    and-int/lit8 v0, p5, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p2, v1

    :cond_0
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_1

    move-object p3, v1

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    :cond_2
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$Factory;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;
.end method
