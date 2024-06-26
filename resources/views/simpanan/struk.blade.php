<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Simpanan Report</title>
</head>
<body onload="window.print()">
    <center>
        <table border="1" width="500px">
            <tr>
                <td>
                    <h3>Bumdes Berkah Bersama <br> </h3>
                </td>
                <td>
                    <table border="1" width="100%">
                        <tr>
                            <td colspan="2">Transaksi Simpanan</td>
                        </tr>
                        <tr>
                            <td>Nama Nasabah :</td>
                            <td>{{ $struk->user->name }}</td>
                        </tr>
                        <tr>
                            <td>No Anggota :</td>
                            <td>{{ $struk->user->no_anggota }}</td>
                        </tr>
                    </table>
                </td>

            </tr>
            <tr>
                <td>Kode Transaksi : <strong>{{ $struk->kode_transaksi }}</strong></td>
                <td align="right">{{ \Carbon\Carbon::parse($struk->tanggal)->format('D, d F Y') }}</td>
            </tr>
            <tr>
                <td>Jumlah Simpanan</td>
                <td align="center">Rp {{ number_format($struk->debit) }}</td>
            </tr>
            <tr align="center">
                <td>
                    Nasabah
                    <br>
                    <br>
                    <br>
                    <br>
                    {{ $struk->user->name }}
                </td>
                <td>
                    Pengelola
                    <br>
                    <br>
                    <br>
                    <br>
                    {{ $struk->pengelola }}
                </td>
            </tr>
            <tr>
                <td colspan="2"><strong>Ket:</strong></td>
            </tr>
        </table>
    </center>

</body>
</html>
