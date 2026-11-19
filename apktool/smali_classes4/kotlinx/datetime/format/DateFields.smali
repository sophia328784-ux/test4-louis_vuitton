.class abstract Lkotlinx/datetime/format/DateFields;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c2\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lkotlinx/datetime/format/DateFields;",
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
.field public static final a:Lkotlinx/datetime/internal/format/GenericFieldSpec;

.field public static final b:Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

.field public static final c:Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

.field public static final d:Lkotlinx/datetime/internal/format/UnsignedFieldSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lkotlinx/datetime/internal/format/GenericFieldSpec;

    new-instance v1, Lkotlinx/datetime/internal/format/PropertyAccessor;

    sget-object v2, Lkotlinx/datetime/format/DateFields$year$1;->b:Lkotlinx/datetime/format/DateFields$year$1;

    invoke-direct {v1, v2}, Lkotlinx/datetime/internal/format/PropertyAccessor;-><init>(Lkotlin/reflect/KMutableProperty1;)V

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lkotlinx/datetime/internal/format/GenericFieldSpec;-><init>(Lkotlinx/datetime/internal/format/Accessor;Ljava/lang/String;Ljava/lang/Object;Lkotlinx/datetime/internal/format/FieldSign;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/datetime/format/DateFields;->a:Lkotlinx/datetime/internal/format/GenericFieldSpec;

    new-instance v1, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

    new-instance v2, Lkotlinx/datetime/internal/format/PropertyAccessor;

    sget-object v0, Lkotlinx/datetime/format/DateFields$month$1;->b:Lkotlinx/datetime/format/DateFields$month$1;

    invoke-direct {v2, v0}, Lkotlinx/datetime/internal/format/PropertyAccessor;-><init>(Lkotlin/reflect/KMutableProperty1;)V

    const/16 v8, 0x38

    const/4 v9, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;-><init>(Lkotlinx/datetime/internal/format/Accessor;IILjava/lang/String;Ljava/lang/Integer;Lkotlinx/datetime/internal/format/FieldSign;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lkotlinx/datetime/format/DateFields;->b:Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

    new-instance v2, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

    new-instance v3, Lkotlinx/datetime/internal/format/PropertyAccessor;

    sget-object v0, Lkotlinx/datetime/format/DateFields$dayOfMonth$1;->b:Lkotlinx/datetime/format/DateFields$dayOfMonth$1;

    invoke-direct {v3, v0}, Lkotlinx/datetime/internal/format/PropertyAccessor;-><init>(Lkotlin/reflect/KMutableProperty1;)V

    const/16 v9, 0x38

    const/4 v10, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x1f

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v10}, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;-><init>(Lkotlinx/datetime/internal/format/Accessor;IILjava/lang/String;Ljava/lang/Integer;Lkotlinx/datetime/internal/format/FieldSign;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lkotlinx/datetime/format/DateFields;->c:Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

    new-instance v3, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

    new-instance v4, Lkotlinx/datetime/internal/format/PropertyAccessor;

    sget-object v0, Lkotlinx/datetime/format/DateFields$isoDayOfWeek$1;->b:Lkotlinx/datetime/format/DateFields$isoDayOfWeek$1;

    invoke-direct {v4, v0}, Lkotlinx/datetime/internal/format/PropertyAccessor;-><init>(Lkotlin/reflect/KMutableProperty1;)V

    const/16 v10, 0x38

    const/4 v11, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x7

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v11}, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;-><init>(Lkotlinx/datetime/internal/format/Accessor;IILjava/lang/String;Ljava/lang/Integer;Lkotlinx/datetime/internal/format/FieldSign;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v3, Lkotlinx/datetime/format/DateFields;->d:Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

    new-instance v4, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

    new-instance v5, Lkotlinx/datetime/internal/format/PropertyAccessor;

    sget-object v0, Lkotlinx/datetime/format/DateFields$dayOfYear$1;->b:Lkotlinx/datetime/format/DateFields$dayOfYear$1;

    invoke-direct {v5, v0}, Lkotlinx/datetime/internal/format/PropertyAccessor;-><init>(Lkotlin/reflect/KMutableProperty1;)V

    const/16 v11, 0x38

    const/4 v12, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x16e

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v12}, Lkotlinx/datetime/internal/format/UnsignedFieldSpec;-><init>(Lkotlinx/datetime/internal/format/Accessor;IILjava/lang/String;Ljava/lang/Integer;Lkotlinx/datetime/internal/format/FieldSign;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
