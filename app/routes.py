from flask import Blueprint, jsonify
import os

main = Blueprint('main', __name__)

@main.route('/api/wisata', methods=['GET'])
def get_wisata():
    # Contoh sederhana: Baca isi folder lib dan kembalikan sebagai JSON
    lib_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), '../lib')
    wisata_files = os.listdir(lib_path)
    return jsonify({'wisata': wisata_files})
