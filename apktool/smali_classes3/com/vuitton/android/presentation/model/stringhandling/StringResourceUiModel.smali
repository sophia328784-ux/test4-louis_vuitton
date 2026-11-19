.class public abstract Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ConcatStringResource;,
        Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Empty;,
        Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$PluralResId;,
        Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;,
        Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResName;,
        Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;,
        Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$WithoutTrailingAsterisk;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u00002\u00020\u0001:\u0007\u0002\u0003\u0004\u0005\u0006\u0007\u0008\u0082\u0001\u0007\t\n\u000b\u000c\r\u000e\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;",
        "Landroid/os/Parcelable;",
        "ResId",
        "ResName",
        "Text",
        "WithoutTrailingAsterisk",
        "PluralResId",
        "Empty",
        "ConcatStringResource",
        "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ConcatStringResource;",
        "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Empty;",
        "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$PluralResId;",
        "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;",
        "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResName;",
        "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;",
        "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$WithoutTrailingAsterisk;",
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
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;)Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ConcatStringResource;
    .locals 3

    new-instance v0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ConcatStringResource;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ConcatStringResource;-><init>(Ljava/util/List;)V

    return-object v0
.end method
