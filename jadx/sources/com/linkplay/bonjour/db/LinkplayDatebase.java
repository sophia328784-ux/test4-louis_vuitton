package com.linkplay.bonjour.db;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.android.wiimu.model.cling_callback.renderingcontrol.alarm.b;
import com.linkplay.bonjour.model.LinkPlayService;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/* JADX INFO: loaded from: classes2.dex */
public class LinkplayDatebase extends SQLiteOpenHelper {
    private static final String DB_NAME = "linkplay_bonjour";
    private static final int DB_VERSION = 1;
    private static final String FLAGS = "flags";
    private static final String FULLNAME = "fullName";
    private static final String IFINDEX = "ifIndex";
    private static final String IP = "ip";
    private static final String PORT = "port";
    private static final String RDATA = "rdata";
    private static final String RRCLASS = "rrclass";
    private static final String RRTYPE = "rrtype";
    private static final String SERVICENAME = "serviceName";
    private static final String TABLE = "service_table";
    private static final String TAG = "LinkplayDatebase";
    private static final String TIME = "time";
    private static final String UUID = "uuid";
    private static final String VERSION = "version";
    private SQLiteDatabase db;
    private SimpleDateFormat formater;

    public LinkplayDatebase(Context context) {
        super(context, DB_NAME, (SQLiteDatabase.CursorFactory) null, 1);
        this.formater = new SimpleDateFormat(b.f22423j);
        this.db = getReadableDatabase();
    }

    private void createTable(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("create table if not exists service_table (_id INTEGER PRIMARY KEY AUTOINCREMENT, ip TEXT, port INT, uuid TEXT, serviceName TEXT, flags INT, ifIndex INT, fullName TEXT, rrtype INT, rrclass INT, rdata BLOB, time DATETIME DEFAULT (datetime( 'now', 'localtime')));");
    }

    private void insert(LinkPlayService linkPlayService) {
        SQLiteDatabase sQLiteDatabase = this.db;
        if (sQLiteDatabase == null) {
            return;
        }
        sQLiteDatabase.execSQL("insert into  service_table(ip,port, uuid, serviceName, flags, ifIndex, fullName, rrtype, rrclass, rdata, time) values (?,?,?,?,?,?,?,?,?,?,?)", new Object[]{linkPlayService.getIp(), Integer.valueOf(linkPlayService.getPort()), linkPlayService.getUuid(), linkPlayService.getServiceName(), Integer.valueOf(linkPlayService.getFlags()), Integer.valueOf(linkPlayService.getIfIndex()), linkPlayService.getFullName(), Integer.valueOf(linkPlayService.getRrtype()), Integer.valueOf(linkPlayService.getRrclass()), linkPlayService.getRdata(), linkPlayService.getTimeStr()});
    }

    private boolean isServiceExist(String str) {
        SQLiteDatabase sQLiteDatabase = this.db;
        return (sQLiteDatabase == null || sQLiteDatabase.rawQuery("select ip,port,uuid from service_table where serviceName=?", new String[]{str}).getCount() == 0) ? false : true;
    }

    private void update(LinkPlayService linkPlayService) {
        SQLiteDatabase sQLiteDatabase = this.db;
        if (sQLiteDatabase == null) {
            return;
        }
        sQLiteDatabase.execSQL("update service_table set ip=?, port=?, uuid=?, serviceName=?, flags=?, ifIndex=?, fullName=?, rrtype=?, rrclass=?, rdata=?, time=? where uuid=?", new Object[]{linkPlayService.getIp(), Integer.valueOf(linkPlayService.getPort()), linkPlayService.getUuid(), linkPlayService.getServiceName(), Integer.valueOf(linkPlayService.getFlags()), Integer.valueOf(linkPlayService.getIfIndex()), linkPlayService.getFullName(), Integer.valueOf(linkPlayService.getRrtype()), Integer.valueOf(linkPlayService.getRrclass()), linkPlayService.getRdata(), linkPlayService.getTimeStr(), linkPlayService.getUuid()});
    }

    public LinkPlayService get(LinkPlayService linkPlayService) {
        SQLiteDatabase sQLiteDatabase = this.db;
        if (sQLiteDatabase == null) {
            return null;
        }
        Cursor cursorRawQuery = sQLiteDatabase.rawQuery("select ip, port, uuid, fullName, rrtype, rrclass, rdata, time from service_table where serviceName=?", new String[]{linkPlayService.getServiceName()});
        if (cursorRawQuery.getCount() <= 0 || !cursorRawQuery.moveToNext()) {
            return null;
        }
        LinkPlayService.Builder builder = new LinkPlayService.Builder(linkPlayService);
        int columnIndex = cursorRawQuery.getColumnIndex(IP);
        if (columnIndex >= 0) {
            builder.ip(cursorRawQuery.getString(columnIndex));
        }
        int columnIndex2 = cursorRawQuery.getColumnIndex("port");
        if (columnIndex2 >= 0) {
            builder.port(cursorRawQuery.getInt(columnIndex2));
        }
        int columnIndex3 = cursorRawQuery.getColumnIndex(UUID);
        if (columnIndex3 >= 0) {
            builder.uuid(cursorRawQuery.getString(columnIndex3));
        }
        int columnIndex4 = cursorRawQuery.getColumnIndex(FULLNAME);
        if (columnIndex4 >= 0) {
            builder.fullName(cursorRawQuery.getString(columnIndex4));
        }
        int columnIndex5 = cursorRawQuery.getColumnIndex(RRTYPE);
        if (columnIndex5 >= 0) {
            builder.rrtype(cursorRawQuery.getInt(columnIndex5));
        }
        int columnIndex6 = cursorRawQuery.getColumnIndex(RRCLASS);
        if (columnIndex6 >= 0) {
            builder.rrclass(cursorRawQuery.getInt(columnIndex6));
        }
        int columnIndex7 = cursorRawQuery.getColumnIndex(RDATA);
        if (columnIndex7 >= 0) {
            builder.rdata(cursorRawQuery.getBlob(columnIndex7));
        }
        int columnIndex8 = cursorRawQuery.getColumnIndex(TIME);
        if (columnIndex8 >= 0) {
            try {
                builder.time(this.formater.parse(cursorRawQuery.getString(columnIndex8)));
            } catch (ParseException e2) {
                e2.printStackTrace();
            }
        }
        return builder.build();
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        createTable(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
    }

    public void save(LinkPlayService linkPlayService) {
        if (isServiceExist(linkPlayService.getServiceName())) {
            linkPlayService.toString();
            update(linkPlayService);
        } else {
            linkPlayService.toString();
            insert(linkPlayService);
        }
    }
}
