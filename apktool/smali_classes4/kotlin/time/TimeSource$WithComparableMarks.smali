.class public interface abstract Lkotlin/time/TimeSource$WithComparableMarks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/time/TimeSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/TimeSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WithComparableMarks"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008g\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lkotlin/time/TimeSource$WithComparableMarks;",
        "Lkotlin/time/TimeSource;",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract a()Lkotlin/time/ComparableTimeMark;
.end method

.method public bridge synthetic a()Lkotlin/time/TimeMark;
    .locals 0

    invoke-interface {p0}, Lkotlin/time/TimeSource$WithComparableMarks;->a()Lkotlin/time/ComparableTimeMark;

    move-result-object p0

    return-object p0
.end method
