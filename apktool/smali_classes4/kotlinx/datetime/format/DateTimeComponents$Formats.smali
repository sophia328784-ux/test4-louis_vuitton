.class public abstract Lkotlinx/datetime/format/DateTimeComponents$Formats;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/datetime/format/DateTimeComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Formats"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lkotlinx/datetime/format/DateTimeComponents$Formats;",
        "",
        "kotlinx-datetime"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lkotlinx/datetime/format/DateTimeComponentsFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lkotlinx/datetime/format/DateTimeComponents;->b:Lkotlinx/datetime/format/DateTimeComponents$Companion;

    sget-object v1, Lkotlinx/datetime/format/DateTimeComponents$Formats$ISO_DATE_TIME_OFFSET$1;->c:Lkotlinx/datetime/format/DateTimeComponents$Formats$ISO_DATE_TIME_OFFSET$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/datetime/format/DateTimeComponentsFormat$Builder;

    new-instance v2, Lkotlinx/datetime/internal/format/AppendableFormatStructure;

    invoke-direct {v2}, Lkotlinx/datetime/internal/format/AppendableFormatStructure;-><init>()V

    invoke-direct {v0, v2}, Lkotlinx/datetime/format/DateTimeComponentsFormat$Builder;-><init>(Lkotlinx/datetime/internal/format/AppendableFormatStructure;)V

    invoke-virtual {v1, v0}, Lkotlinx/datetime/format/DateTimeComponents$Formats$ISO_DATE_TIME_OFFSET$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lkotlinx/datetime/format/DateTimeComponentsFormat;

    invoke-static {v0}, Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder$DefaultImpls;->c(Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;)Lkotlinx/datetime/internal/format/CachedFormatStructure;

    move-result-object v0

    invoke-direct {v1, v0}, Lkotlinx/datetime/format/DateTimeComponentsFormat;-><init>(Lkotlinx/datetime/internal/format/CachedFormatStructure;)V

    sput-object v1, Lkotlinx/datetime/format/DateTimeComponents$Formats;->a:Lkotlinx/datetime/format/DateTimeComponentsFormat;

    sget-object v0, Lkotlinx/datetime/format/DateTimeComponents$Formats$RFC_1123$1;->c:Lkotlinx/datetime/format/DateTimeComponents$Formats$RFC_1123$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlinx/datetime/format/DateTimeComponentsFormat$Builder;

    new-instance v2, Lkotlinx/datetime/internal/format/AppendableFormatStructure;

    invoke-direct {v2}, Lkotlinx/datetime/internal/format/AppendableFormatStructure;-><init>()V

    invoke-direct {v1, v2}, Lkotlinx/datetime/format/DateTimeComponentsFormat$Builder;-><init>(Lkotlinx/datetime/internal/format/AppendableFormatStructure;)V

    invoke-virtual {v0, v1}, Lkotlinx/datetime/format/DateTimeComponents$Formats$RFC_1123$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lkotlinx/datetime/format/DateTimeComponentsFormat;

    invoke-static {v1}, Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder$DefaultImpls;->c(Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;)Lkotlinx/datetime/internal/format/CachedFormatStructure;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlinx/datetime/format/DateTimeComponentsFormat;-><init>(Lkotlinx/datetime/internal/format/CachedFormatStructure;)V

    return-void
.end method
